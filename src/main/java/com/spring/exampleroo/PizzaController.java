package com.spring.exampleroo;

import com.spring.exampleroo.domain.Pizza;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Pizza.class)
@Controller
@RequestMapping("/pizzas")
@RooWebScaffold(path = "pizzas", formBackingObject = Pizza.class)
public class PizzaController {
}
