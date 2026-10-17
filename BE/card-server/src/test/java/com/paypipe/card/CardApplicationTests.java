package com.paypipe.card;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;

@SpringBootTest
@Import(TestcontainersConfiguration.class)
class CardApplicationTests {

    @Test
    void contextLoads() {
    }
}
