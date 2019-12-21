package controller;

import db.Service;
import domain.PersonService;

import java.util.ServiceConfigurationError;

public class ControllerFactory {
	
    public RequestHandler getController(String key, PersonService model, Service service) {
        return createHandler(key, model, service);
    }
    
	private RequestHandler createHandler(String handlerName, PersonService model, Service service) {
		RequestHandler handler = null;
		try {
			Class<?> handlerClass = Class.forName("controller."+ handlerName);
			Object handlerObject = handlerClass.newInstance();
			handler = (RequestHandler) handlerObject;
	    	handler.setModel(model);
	    	handler.setService(service);
		} catch (Exception e) {
			throw new RuntimeException("Deze pagina bestaat niet!!!!");
		}
		return handler;
	}


}
