package com.example.demo.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * 定时输出日志
 * Created by jinra on 2017/10/19.
 */
@Service
public class PrintService {

    private static final Logger LOGGER = LoggerFactory.getLogger(PrintService.class);
    @Scheduled(fixedRate=10000)
    public void print(){
        System.out.println("LogTest-System: " + new Date());
        LOGGER.info("LogTest-LOGGER: " + new Date());
    }
}
