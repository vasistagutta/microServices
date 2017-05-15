
package com.helloWorld.dto;

import java.math.BigDecimal;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;






public class HelloWorldReqDTO {


	  private String firstName;
	  private String secondName;
	  // Formats output date when this DTO is passed through JSON
	  @JsonFormat(pattern = "dd/MM/yyyy")
	  // Allows dd/MM/yyyy date to be passed into GET request in JSON
	  @DateTimeFormat(pattern = "dd/MM/yyyy")
	  private Date dateOfBirth;

	  private String profession;
	  private BigDecimal salary;

	  public HelloWorldReqDTO(
	      String firstName, String secondName, Date dateOfBirth, String profession, BigDecimal salary) {
	    this.firstName = firstName;
	    this.secondName = secondName;
	    this.dateOfBirth = dateOfBirth;
	    this.profession = profession;
	    this.salary = salary;
	  }

	  public HelloWorldReqDTO() {}

	  public String getFirstName() {
	    return firstName;
	  }

	  public void setFirstName(String firstName) {
	    this.firstName = firstName;
	  }

	  public String getSecondName() {
	    return secondName;
	  }

	  public void setSecondName(String secondName) {
	    this.secondName = secondName;
	  }

	  public Date getDateOfBirth() {
	    return dateOfBirth;
	  }

	  public void setDateOfBirth(Date dateOfBirth) {
	    this.dateOfBirth = dateOfBirth;
	  }

	  public String getProfession() {
	    return profession;
	  }

	  public void setProfession(String profession) {
	    this.profession = profession;
	  }

	  public BigDecimal getSalary() {
	    return salary;
	  }

	  public void setSalary(BigDecimal salary) {
	    this.salary = salary;
	  }

}


