package com.coursework.Util;

import java.util.regex.Pattern;


public class ValidationUtil {
	
	public static Boolean isNullOrEmpty(String value){
		   return value == null || value.trim().isEmpty();
	}
	 public static boolean isAlphabetic(String value){
	       return value != null && value.matches("^[a-zA-Z]+$");
	}
	 public boolean isValidPassword(String password) {
			String passwordRegex = "^(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
			return !isNullOrEmpty(password) && password.matches(passwordRegex);
		}
	 
		public static boolean isAlphanumericStartingWithLetter(String value){
			
	  return value != null && value.matches("^[a-zA-Z][a-zA-Z0-9]*$");
	  }

		public static boolean isValidGender(String value)
	         {
		 return value != null && (value.equalsIgnoreCase("male") || value.equalsIgnoreCase("female"));

		}

	 public static boolean isValidEmail(String email) {
	        String emailRegex = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
	        return email != null && Pattern.matches(emailRegex, email);
	    }
		
		
	 public static boolean isValidPhoneNumber(String number) {
	        return number != null && number.matches("^98\\d{8}$");
	 }
	 public static boolean isValidInteger(String value) {
		    return value != null && value.matches("^-?\\d+$");
	}
	 
}
