package com.hieulm.action;

import java.util.Map;

import com.hieulm.model.BO.Taikhoan;
import com.hieulm.model.DAO.TaikhoanDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;

public class RegisterAction extends ActionSupport {

	private String username;
	private String password;
	private String email;
	private String firstname;
	private String lastname;

	public static final String ACCOUNT = "account";
	
	public String getUsername() {
		return username;
	}


	@RequiredStringValidator(message = "Invalid username")
	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}


	@RequiredStringValidator(message = "Invalid password")
	public void setPassword(String password) {
		this.password = password;
	}



	public String getEmail() {
		return email;
	}


	@RequiredStringValidator(message = "Invalid Email")
	@EmailValidator(message = "Invalid Email")
	public void setEmail(String email) {
		this.email = email;
	}



	public String getFirstname() {
		return firstname;
	}



	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}



	public String getLastname() {
		return lastname;
	}



	public void setLastname(String lastname) {
		this.lastname = lastname;
	}



//	@Override
//	public void validate() {
//		// TODO Auto-generated method stub
//		if(username == null || username.trim().equals(""))
//			addFieldError("username", "Username is invalid");
//		if(password == null || password.trim().equals(""))
//			addFieldError("password", "Password is invalid");
//		if(email == null || emailValidator.validate(email))
//			addFieldError("email", "Email is invalid");	
//	}



	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Taikhoan taikhoan = new Taikhoan();
		taikhoan.setEmail(email);
		taikhoan.setFirstname(firstname);
		taikhoan.setLastname(lastname);
		taikhoan.setMatkhau(password);
		taikhoan.setTentaikhoan(username);
		taikhoan.setRole("user");
		
		Map session = (Map) ActionContext.getContext().get("session");
		// không hoạt động vì validate() chạy trc và return INPUT;
		// có thể khắc phục = cách dùng interceptor
		if(session.containsKey("user")){
			System.out.println("user is already logged");
			return ACCOUNT;
		}
			
		
		TaikhoanDAO dao = new TaikhoanDAO();
		int check = dao.addTaikhoan(taikhoan);
		
		
		if(check == 1){
			Taikhoan tk = dao.getTaikhoanByEmail(email);
			session.put("username", tk.getTentaikhoan());
			session.put("user", tk);
			return SUCCESS;
		}
		else
			return ERROR;
	}

}
