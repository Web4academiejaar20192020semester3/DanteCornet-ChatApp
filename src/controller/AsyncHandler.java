package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.PersonRepository;
import db.Service;
import domain.Person;
import domain.PersonService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public abstract class AsyncHandler extends RequestHandler {

    private Service service;

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        return null;
    }
/*    public String toJSON (Person person) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(person);
    }
    public String toJSON (PersonService persons) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(persons);
    }*/

    public String toJSON (Object o) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(o);
    }
    public void setService (Service service){
        if(service == null)this.service = new Service();
        else{this.service = service;}
    }

    public Service getService() {

        return service;
    }
}
