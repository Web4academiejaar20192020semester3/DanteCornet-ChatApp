package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.PersonRepository;
import db.PersonRepositoryStub;
import domain.Chat;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Messaging extends AsyncHandler {
    PersonRepository persons = new PersonRepositoryStub();
    Chat chat = new Chat();
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Person person1 = (Person) session.getAttribute("user");
        String sperson2 = request.getParameter("to");
        Person person2 = persons.get(sperson2);
        String text = request.getParameter("message");

        if(chat == null)throw new IllegalArgumentException();
        chat.setPerson1(person1);
        chat.setPerson2(person2);
        chat.addMessage(text);

        response.setContentType("text/plain");
        response.getWriter().write(text);
        return " ";
    }






}
