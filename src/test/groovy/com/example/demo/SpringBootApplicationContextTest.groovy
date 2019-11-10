package com.example.demo

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.context.ApplicationContext
import spock.lang.Specification

@SpringBootTest
class SpringBootApplicationContextTest extends Specification {

    @Autowired
    private ApplicationContext ctx

    def "application context starts"() {
        expect:
            ctx != null
    }

}