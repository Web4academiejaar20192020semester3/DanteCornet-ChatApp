package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import db.PersonRepositoryStub;
import db.Service;
import domain.Person;
import domain.PersonService;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	private ControllerFactory controllerFactory = new ControllerFactory();
	private PersonService model = new PersonService();
	private Service service = new Service();

	public Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public String toJSON (String status) throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(status);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String destination = "index.jsp";
		RequestHandler handler = null;
        if (action != null) {

        	try {
        		handler = controllerFactory.getController(action, model, service);
				destination = handler.handleRequest(request, response);
        	} 
        	catch (NotAuthorizedException exc) {
        		List<String> errors = new ArrayList<String>();
        		errors.add(exc.getMessage());
        		request.setAttribute("errors", errors);
        		destination="index.jsp";
        	}
        }
        if(handler instanceof AsyncHandler) {
        	response.getWriter().write(destination);
		}
        else {
			RequestDispatcher view = request.getRequestDispatcher(destination);
			view.forward(request, response);
		}
	}

}
