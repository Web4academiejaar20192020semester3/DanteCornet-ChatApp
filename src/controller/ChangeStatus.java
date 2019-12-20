package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ChangeStatus extends AsyncHandler {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("user");
        person.setStatus(request.getParameter("newStatus"));
        session.setAttribute("user", person);
        String quoteJSON = this.toJSON(person);
        response.setContentType("application/json");
        response.getWriter().write(quoteJSON);
        return "";
    }


}
