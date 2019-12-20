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

public class GetMessages extends AsyncHandler {
    private Chat chat = new Chat();

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String json = "";
        json = this.chatToJSON(chat);
        response.setContentType("application/json");
        response.getWriter().write(json);
        return " ";
    }


    public String chatToJSON (Chat chat) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(chat.getMessages());
    }

}
