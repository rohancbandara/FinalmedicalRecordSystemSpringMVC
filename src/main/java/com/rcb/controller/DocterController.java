package com.rcb.controller;

import java.io.IOException;
import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rcb.model.Docter;
import com.rcb.service.DocterService;

@Controller
public class DocterController {
	private static final Logger logger = Logger.getLogger(EmployeeController.class);

	public DocterController() {
		System.out.println("DocterController()");
	}

	@Autowired
	private DocterService docterService;

	// ----------------Docter----------------------

	@RequestMapping(value = "/")
	public ModelAndView viewDashboard(ModelAndView model) throws IOException {

		model.setViewName("DashBoard");
		return model;
	}

	@RequestMapping(value = "/viewDocter")
	public ModelAndView listDocter(ModelAndView model) throws IOException {
		List<Docter> listDocter = docterService.getAllDocters();
		model.addObject("listDocter", listDocter);
		model.setViewName("DocterList");
		return model;
	}

	@RequestMapping(value = "/saveDocter", method = RequestMethod.POST)
	public ModelAndView saveDocter(@ModelAttribute Docter docter) {
		if (docter.getdId() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee

			docterService.addDocter(docter);
		} else {
			docterService.updateDocter(docter);
		}
		return new ModelAndView("redirect:/newDocter");
	}

	@RequestMapping(value = "/newDocter", method = RequestMethod.GET)
	public ModelAndView newDocter(ModelAndView model) {
		Docter docter = new Docter();
		model.addObject("docter", docter);
		model.setViewName("DocterAdd");
		return model;
	}

}
