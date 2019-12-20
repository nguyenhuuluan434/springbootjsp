package com.lsa.springbootjsp.controller;

import com.lsa.springbootjsp.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    private static List<Person> persons = new ArrayList<>(0);

    static {
        persons.add(new Person("Nguyen", "Phuong"));
        persons.add(new Person("Nguyen", "Anh"));
    }

    @RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
    public String index(Model model) {
        String message = "Hello";
        model.addAttribute("message", message);
        return "index";
    }

    @RequestMapping(value = {"persons"}, method = RequestMethod.GET)
    public String viewPersonList(Model model) {
        model.addAttribute("persons", persons);
        return "persons";
    }
}
