package riscv

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.sys.process._
import scala.io.Source
import java.io.PrintWriter

class mycputest extends AnyFlatSpec with ChiselScalatestTester {
  behavior.of("Three-stage Pipelined CPU")

  /**
    * 使用 objdump 抓取 ELF 檔中的指定 symbol 位址。
    *  - elfFile    : ELF 檔案路徑
    *  - objdumpPath: objdump 執行檔路徑（例如 riscv64-unknown-elf-objdump）
    *  - symbolName : 想要查詢的符號名稱（例如 begin_signature）
    *
    * 回傳該 symbol 在記憶體中的起始位址（BigInt 格式，之後會用來做加減）
    */
  def extractSymbolAddress(elfFile: String, objdumpPath: String, symbolName: String): BigInt = {
    // 執行 "objdump -t <elfFile>" 指令取得符號表
    val symbolsCmd = s"$objdumpPath -t $elfFile"
    val symbolsOutput = symbolsCmd.!!

    // 逐行解析，找到包含 symbolName 的那一行
    val symbolLine = symbolsOutput
      .split("\n")
      .find(_.contains(s" $symbolName"))
      .getOrElse(throw new RuntimeException(s"Symbol $symbolName not found in $elfFile."))

    // 依據符號表格式，通常該行的最前面（split 後的第 0 欄）即為該 symbol 的位址（16 進位）
    BigInt(symbolLine.split("\\s+")(0), 16)
    
  }

  /**
    * 將測試程式中讀取到的記憶體資料（signature 區段）寫入檔案
    *  - filePath      : 欲輸出的檔案路徑
    *  - signatureData : 讀取到的記憶體內容（BigInt 序列）
    */


  it should "test my cpu by using test data" in {
    // 1. 定義檔案與工具路徑

    val elfFile: String = sys.props.getOrElse("elfFile", "")
    val signatureFile: String = sys.props.getOrElse("signatureFile", "signature.out")
    val objdumpPath = "/usr/bin/riscv64-unknown-elf-objdump"

    // 2. 透過 symbol 取得 ELF 中的 signature 區段起始與結束位址
    var beginSignature = extractSymbolAddress(elfFile, objdumpPath, "begin_signature")
    // beginSignature = beginSignature & 0x0000FFFF // 清除高位，只保留低 16 位
    var endSignature   = extractSymbolAddress(elfFile, objdumpPath, "end_signature")
    // endSignature = endSignature & 0x0000FFFF // 清除高位，只保留低 16 位

    println(s"Begin Signature Address: 0x${beginSignature.toString(16)}")
    println(s"End Signature Address  : 0x${endSignature.toString(16)}")

    // 3. 在 Chisel 測試環境中實例化頂層模組，並讀取該區段資料
    test(new TestTopModule("output.asmbin", ImplementationType.FiveStageFinal))
      .withAnnotations(TestAnnotations.annos) { c =>

      // (a) 先讓 CPU 執行足夠週期，避免尚未算完就讀取
      //     依照你的 CPU 或程式複雜度，酌情增加或減少
      c.clock.setTimeout(0)
      c.clock.step(50000)

      // (b) 計算 signature 大小（單位：word 數量）
      //     每個 word 是 4 Bytes，所以 (end - begin) / 4
      val signatureWords = (endSignature - beginSignature) / 4
      println(s"Signature size: $signatureWords words")

      // (c) 依序讀取該區段的每個 word
    val writer = new PrintWriter(signatureFile ) // 在循环外部打开文件
     (0 until signatureWords.toInt).map { i =>
        val address = beginSignature + (i * 4) + 4096
        // val address =  (i * 4)
        c.io.mem_debug_read_address.poke(address.U)
        c.clock.step(1) // 等待一個 cycle，讓讀取結果穩定
        val data = c.io.mem_debug_read_data.peek().litValue
        // val writer = new PrintWriter(filePath)
        writer.printf("%08x\n", data.toLong)
      }
      writer.close()
    // val signatureFile = s"test.signature"
    // try {
    // (  0 until endSignature.toInt by 4).foreach { addr =>

    //     val address = addr.toInt + 4096
    //     c.io.mem_debug_read_address.poke(address.U)
    //     c.clock.step() 
    //     val data = c.io.mem_debug_read_data.peek().litValue
    //     if (addr >= beginSignature && addr < endSignature) {
    //       writer.printf("%08x\n", data.toLong)
    //     }
    //   //  writer.printf("%08x\n", data.toLong)
    // }

    // } finally {
    // writer.close() // 确保在完成后关闭文件
    // }
      // 4. 將讀取到的 signature 寫入檔案
    //   val signatureFile = s"test.signature"
    //   writeSignatureToFile(signatureFile, signatureData)
      println(s"Signature is written to: $signatureFile")
    }
  }
}
