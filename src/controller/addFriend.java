package controller;

import db.PersonRepository;
import db.PersonRepositoryStub;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class addFriend extends AsyncHandler {
    PersonRepository repo = new PersonRepositoryStub();

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Person person = (Person) session.getAttribute("user");
        Person newFriend = repo.get(request.getParameter("newStatus"));
        person.addFriend(newFriend);

        String quoteJSON = this.toJSON(person);
        response.setContentType("application/json");
        response.getWriter().write(quoteJSON);
        return "";
    }


}
