package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Chat;
import domain.Person;
import db.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class GetMessages extends AsyncHandler {
    Service service = getService();

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String json = "";
        HttpSession session = request.getSession();
        Person person1 = (Person) session.getAttribute("user");
        String sperson2 = request.getParameter("Person2");
        Person person2 = getPersonService().getPerson(sperson2);
        Chat chat = getService().getChat(person1, person2);
        json = this.chatToJSON(chat);
        response.setContentType("application/json");
        response.getWriter().write(json);
        return " ";

    }


    public String chatToJSON (Chat chat) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(chat);
    }

}
