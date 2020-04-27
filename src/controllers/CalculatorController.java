package controllers;

import org.springframework.expression.Operation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CalculatorController {

    @RequestMapping(value = "/calculator" , method = RequestMethod.GET)
    public String getCalculatorForm(){
        return "calculator";
    }

    @RequestMapping(value = "/calculator", method = RequestMethod.POST)
    public ModelAndView calculator(@RequestParam float num_1, float num_2, String operation){
        float result = 0;
        try {
            switch (operation){
                case "addition":
                    result = num_1 + num_2;
                    break;
                case "subtraction":
                    result = num_1 - num_2;
                    break;
                case "multiplication":
                    result = num_1 * num_2;
                    break;
                case "division":
                    result = num_1 / num_2;
                    break;
            }

        } catch (Exception e){
            e.printStackTrace();
        }
        return new ModelAndView("calculator","result",result);
    }
}
