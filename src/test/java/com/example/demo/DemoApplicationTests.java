package com.example.demo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
class DemoApplicationTests {

    @Test
    void contextLoads() {
        // Kiểm tra Spring Boot Context khởi tạo bình thường
        assertTrue(true, "Context loads successfully");
    }

    @Test
    void sampleUnitTest() {
        // Test kiểm tra logic toán học cơ bản
        int expected = 10;
        int actual = 5 + 5;
        assertEquals(expected, actual, "Test logic passes");

        // =========================================================================
        // HƯỚNG DẪN TEST BÀI 5: KỊCH BẢN CỐ TÌNH LÀM ĐỨT JUNIT TEST
        // =========================================================================
        // Để kiểm tra yêu cầu: "Thử sửa code làm đứt JUnit Test, xác nhận Job
        // docker-build tự động chuyển trạng thái Skipped", hãy BỎ DẤU CHÚ THÍCH
        // ở dòng dưới đây rồi commit & push lên GitHub:
        //
        // assertEquals(1, 2, "Cố tình làm fail test để kiểm tra Job docker-build bị Skipped!");
        // =========================================================================
    }
}
