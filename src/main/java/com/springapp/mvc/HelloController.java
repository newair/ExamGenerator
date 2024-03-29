package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "hello";
	}


    @RequestMapping(value = "test" ,method = RequestMethod.GET)
    public String acceptString(ModelMap model, @RequestParam(value = "question")  String question,@RequestParam(value = "answers")  String answers ) {

        model.addAttribute("question", question);
        model.addAttribute("answers", answers);
        return "hello";

    }
}