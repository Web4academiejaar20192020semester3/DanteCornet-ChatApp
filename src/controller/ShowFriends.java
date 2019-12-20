package controller;

import domain.Person;
import domain.PersonService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.List;

public class ShowFriends extends AsyncHandler {
    private PersonService model = new PersonService();
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("user");

        String quoteJSON = this.toJSON(person.getFriends());
        response.setContentType("application/json");
        response.getWriter().write(quoteJSON);
        return " ";
    }



}
