package com.mustafafindik.dockerizemavenbuilddemo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@Slf4j
@SpringBootApplication
public class DockerizeMavenBuildDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DockerizeMavenBuildDemoApplication.class, args);
        log.info("Hello world!");
    }

}
