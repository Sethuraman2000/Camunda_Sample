package com.learn.delegates;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
import org.springframework.stereotype.Component;

@Component("welcome")
public class Welcome implements JavaDelegate{
	
	@Override
	public void execute(DelegateExecution execution) throws Exception{
		System.out.println("Welcome");
	}

}
