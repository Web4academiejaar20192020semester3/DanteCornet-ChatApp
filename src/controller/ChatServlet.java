package controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.PersonRepository;
import db.PersonRepositoryStub;
import domain.Chat;
import domain.Person;

@WebServlet("/ChatServlet")
public class ChatServlet extends AsyncHandler {

    private static final long serialVersionUID = 1L;
    private Chat chat;
    private PersonRepository persons = new PersonRepositoryStub();

    public ChatServlet() {
        super();
        chat = new Chat();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String json = "";
        json = this.chatToJSON(chat);
        response.setContentType("application/json");
        response.getWriter().write(json);
    }

    public String chatToJSON (Chat chat) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        if(chat == null)throw new IllegalAccessError();
        return mapper.writeValueAsString(chat.getMessages());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

    }

}
