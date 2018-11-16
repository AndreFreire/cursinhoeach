package com.cursinhoeach.cursinhoeach.controller.portal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PortalController {

	@GetMapping("/portal")
	public String portal(Model model) {
		model.addAttribute("title", "Portal");
		return "portal";
	}
	
	
}
