package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SandwichController {
    @RequestMapping(value = "/sandwich",method = RequestMethod.GET)
    public String getSandwichForm(){
        return "sandwich-form";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public ModelAndView getSandwichCondiments(@RequestParam("condiment") String[] condiments){
        return new ModelAndView("sandwich-result","condiments",condiments);
    }
}
