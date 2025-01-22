package riscv

import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class ThreeStageCPUTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior.of("Three-stage Pipelined CPU")
  it should "calculate recursively fibonacci(10)" in {
    test(new TestTopModule("fibonacci.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) {
      c =>
        for (i <- 1 to 50) {
          c.clock.step(1000)
          c.io.mem_debug_read_address.poke((i * 4).U) // Avoid timeout
        }

        c.io.mem_debug_read_address.poke(4.U)
        c.clock.step()
        c.io.mem_debug_read_data.expect(55.U)
    }
  }
  it should "quicksort 10 numbers" in {
    test(new TestTopModule("quicksort.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) {
      c =>
        for (i <- 1 to 50) {
          c.clock.step(1000)
          c.io.mem_debug_read_address.poke((i * 4).U) // Avoid timeout
        }
        for (i <- 1 to 10) {
          c.io.mem_debug_read_address.poke((4 * i).U)
          c.clock.step()
          c.io.mem_debug_read_data.expect((i - 1).U)
        }
    }
  }
  it should "store and load single byte" in {
    test(new TestTopModule("sb.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) { c =>
      c.clock.step(1000)
      c.io.regs_debug_read_address.poke(5.U)
      c.io.regs_debug_read_data.expect(0xdeadbeefL.U)
      c.io.regs_debug_read_address.poke(6.U)
      c.io.regs_debug_read_data.expect(0xef.U)
      c.io.regs_debug_read_address.poke(1.U)
      c.io.regs_debug_read_data.expect(0x15ef.U)
    }
  }
  it should "solve control hazards" in {
    test(new TestTopModule("hazard.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) {
      c =>
        c.clock.step(1000)
        c.io.regs_debug_read_address.poke(1.U)
        c.io.regs_debug_read_data.expect(26.U)
        c.io.mem_debug_read_address.poke(4.U)
        c.clock.step()
        c.io.mem_debug_read_data.expect(1.U)
        c.io.mem_debug_read_address.poke(8.U)
        c.clock.step()
        c.io.mem_debug_read_data.expect(3.U)
    }
  }
  it should "test multiplication and infinite loop" in {
  test(new TestTopModule("test.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) {
    c =>
      // 設置模擬時鐘步數
      c.clock.step(1000)

      // 驗證寄存器 t0 的值（應為 -9 * 7 = -63）
      c.io.regs_debug_read_address.poke(5.U) // t0 對應的寄存器編號
      c.io.regs_debug_read_data.expect(BigInt("4294967233").U)
      var realData = c.io.regs_debug_read_data.peek().litValue
      var signedData = if (realData >= (1L << 31)) {
        realData - (1L << 32)
      } else {
        realData
      }
      println(s"[Check a0] real = $signedData")

      // 檢查模擬器是否進入無限迴圈
      c.clock.step(1) // 再推進一個時鐘周期確認系統穩定性
   }
  }
  it should "test multiplication, division, unsigned division, and remainders with an infinite loop" in {
  test(new TestTopModule("test2.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) {
    c =>
      // Set the simulation clock steps
      c.clock.step(1000)

      // Verify register a0 (should be 8)
      c.io.regs_debug_read_address.poke(10.U) // a0 corresponds to register number 10
      c.io.regs_debug_read_data.expect(8.U)
      c.clock.step()
      // Verify register a1 (should be 8 * 8 = 64)
      c.io.regs_debug_read_address.poke(11.U) // a1 corresponds to register number 11
      c.io.regs_debug_read_data.expect(64.U)
      c.clock.step()
      // Verify register a2 (should be a1 / a0 = 64 / 8 = 8)
      c.io.regs_debug_read_address.poke(12.U) // a2 corresponds to register number 12 
      c.io.regs_debug_read_data.expect(8.U)
      c.clock.step()
      // Verify register a3 (should be a1 / a0 using unsigned division = 64 / 8 = 8)
      c.io.regs_debug_read_address.poke(13.U) // a3 corresponds to register number 13
      c.io.regs_debug_read_data.expect(8.U)
      c.clock.step()
      // Verify register a4 (should be a1 % a0 = 64 % 8 = 0)
      c.io.regs_debug_read_address.poke(14.U) // a4 corresponds to register number 14
      c.io.regs_debug_read_data.expect(0.U)
      c.clock.step()
      // Verify register a5 (should be a1 % a0 using unsigned remainder = 64 % 8 = 0)
      c.io.regs_debug_read_address.poke(15.U) // a5 corresponds to register number 15
      c.io.regs_debug_read_data.expect(0.U)

      // Check that the simulator enters an infinite loop
      c.clock.step(1) // Advance one more clock cycle to confirm system stability
  }
 }
   it should "correctly calculate the integer square root of 100" in {
    test(new TestTopModule("test3.asmbin", ImplementationType.ThreeStage)).withAnnotations(TestAnnotations.annos) { c =>
      
      for (_ <- 0 until 1000) {
        c.clock.step()
      }

      c.io.regs_debug_read_address.poke(6.U) 
      c.clock.step()
      c.io.regs_debug_read_data.expect(10.U)
    }
  }


}
