package org.happy.poor.exception;

import org.happy.poor.members.model.IMemberInfo;

public class MemberValidationException extends Exception{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	IMemberInfo memberInfo = null;
	
	public MemberValidationException(IMemberInfo memberInfo){
		this.memberInfo = memberInfo;
	}
	
	@Override
	public String getMessage(){
		
		return null;
	}

}
