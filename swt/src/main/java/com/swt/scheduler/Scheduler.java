package com.swt.scheduler;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Scheduler {
	
	@Scheduled(cron = "0 42 13 * * *")
	public void cronTest() {
		log.info("Welcome batch job111!!");
		log.info("Welcome batch job222!");
		log.info("Welcome batch job333!!");
		log.info("Welcome batch job!444!");
		log.info("Welcome batch job!555!");
	}
}
