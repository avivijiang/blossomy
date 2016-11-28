/*package com.update;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



public class UpdateUser{


	private String userSex;
	private int userAge;
	private  String userEmail;
	private String userAddress;
	private String userTel;
	

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	

	public int getUserAge() {
		return userAge;
	}

	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserTel() {
		return userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public String execute() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String username=(String)session.getAttribute("userName"); 
		System.out.println(username);
		String flag=null;
		
			try {
				flag=uc.updateUser(username,getUserAge(),getUserSex(),getUserEmail(),getUserTel(),getUserAddress());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flag=="修改成功"){
				 String userSex=request.getParameter("userSex");
					session.setAttribute("userSex",userSex);
					String userEmail=request.getParameter("userEmail");
					session.setAttribute("userEmail",userEmail);
					String userTel=request.getParameter("userTel");
					session.setAttribute("userTel",userTel);
					String userExperience=request.getParameter("userExperience");
					session.setAttribute("userExperience",userExperience);
					String userID=request.getParameter("userID");
					session.setAttribute("userID",userID);
					String userAge=request.getParameter("userAge");
					session.setAttribute("userAge",userAge);
					String userAddress=request.getParameter("userAddress");
					session.setAttribute("userAddress",userAddress);

	               return "updatesuccess";}
			else{return "updateerror";}
		
	}
	

}
*/