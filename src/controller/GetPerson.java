package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import domain.AngularPerson;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetPerson extends AsyncHandler  {
    private ObjectMapper mapper = new ObjectMapper();
    @Override
    public String handleRequest (HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Access-Control-Allow-Origin", "*");
        Person person = super.getPersonService().getPerson(request.getParameter("userId"));
        AngularPerson angularPerson = new AngularPerson();
        angularPerson.setFirstName(person.getFirstName());
        angularPerson.setMail(person.getUserId());
        angularPerson.setLastName(person.getLastName());
        angularPerson.setUserId(person.getUserId());
        String json = mapper.writeValueAsString(angularPerson);
        System.out.println(json);
        //System.out.println(request.getParameter("userId"));
        return json;
    }
}