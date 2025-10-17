package com.learn.delegates;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class Login implements JavaDelegate {

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		
		String username = (String) execution.getVariable("username");
		String password = (String) execution.getVariable("password");
		
//		User user = userRespository.findByUsernameAndPassword(username, password);
		
		if("user" != null ) {
			execution.setVariable("success", 1);
		}
		else {
			execution.setVariable("success", 0);
		}

	}

}
