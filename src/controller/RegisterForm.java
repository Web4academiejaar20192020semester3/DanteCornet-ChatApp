package controller;

import domain.Person;
import domain.PersonService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

public class RegisterForm extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        List<String> errors = new ArrayList<String>();
        PersonService personService = super.getPersonService();
        String password = request.getParameter("password");
        Person person = new Person();
        if (!password.equals(request.getParameter(" passwordAgain"))) {
            errors.add("Passwoord is niet hetzelfde");
        }
        try {
            person.setUserId(request.getParameter("email"));
            person.setFirstName(request.getParameter("Fname"));
            person.setLastName(request.getParameter("name"));
            person.setHashedPassword(request.getParameter("password"));
        } catch (Exception e) {
            errors.add(e.getMessage());
        }
        if (errors.size() > 0) {
            System.out.println(errors);
            request.setAttribute("errors", errors);
            return "Controller?action=Register";
        }
        try {
            personService.addPerson(person);
        } catch (Exception e) {
            errors.add(e.getMessage());
            request.setAttribute("errors", errors);
            return "Controller?action=Register";
        }

        return "chat.jsp";
    }
}
