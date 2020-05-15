package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.model.Car;
import web.service.Service;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CarController {

	@RequestMapping(value = "cars", method = RequestMethod.GET)

	public String printWelcome(ModelMap model) {
		Service service = new Service();
		List<Car> messages =service.getCar();
		model.addAttribute("messagesCar", messages);
		return "cars";
	}
}