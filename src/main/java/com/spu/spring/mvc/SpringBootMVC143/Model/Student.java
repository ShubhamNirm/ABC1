package com.spu.spring.mvc.SpringBootMVC143.Model;

	import jakarta.persistence.Entity;
	import jakarta.persistence.Id;

	@Entity
	public class Student {
		private String name;
		@Id
		private String email;
		private String message;
		public Student() {
			super();
			// TODO Auto-generated constructor stub
		}
		 
		
		public Student(String name, String email, String message) {
			super();
			this.name = name;
			this.email = email;
			this.message = message;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		
		public String getEmail() {
			return email;
		}
		
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		@Override
		public String toString() {
			return "Student [name=" + name + ", email=" + email + ", message=" + message + "]";
		}
 
		 
	}



