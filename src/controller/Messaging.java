package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.PersonRepository;
import db.PersonRepositoryStub;
import db.Service;
import domain.Chat;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Messaging extends AsyncHandler {



    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Person person1 = (Person) session.getAttribute("user");
        String sperson2 = request.getParameter("to");
        Person person2 = getPersonService().getPerson(sperson2);
        String text = request.getParameter("message");
        PersonRepository persons = new PersonRepositoryStub();
/*        HttpSession sessions = request.getSession();
        if (sessions.getAttribute("service") != null) {
            service = (Service) sessions.getAttribute("service");
        }*/
        Service service = getService();

        if(service.getChat(person1, person2) == null) {
            service.addChat(new Chat(person1,person2));
    }
        Chat chat = service.getChat(person1, person2);
        chat.addMessage(text);


//        sessions.setAttribute("service", service);

        response.setContentType("text/plain");
        response.getWriter().write(text);
        return " ";
    }
}


