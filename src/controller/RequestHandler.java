package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import db.Service;
import domain.PersonService;
import domain.Person;
import domain.Role;

import java.io.IOException;

public abstract class RequestHandler {
	
	private PersonService personService;
	private Service service;

	public abstract String handleRequest (HttpServletRequest request, HttpServletResponse response) throws IOException;
	
	public void setModel (PersonService personService) {
		this.personService = personService;
	}
	public void setService (Service service){
		if(service == null)this.service = new Service();
		else{this.service = service;}
	}

	public PersonService getPersonService() {
		return personService;
	}

	public Service getService() {
			return this.service;
	}
	
	protected boolean isFromUserWithRole (HttpServletRequest request, Role role) {
		Person person = (Person) request.getSession().getAttribute("user");
		if (person != null && person.getRole().equals(role)) {
			return true;
		}
		return false;
	}

}
