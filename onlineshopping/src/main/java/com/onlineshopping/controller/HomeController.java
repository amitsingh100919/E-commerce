package com.onlineshopping.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlineshopping.model.Product;
import com.onlineshopping.service.ProductService;

@Controller
public class HomeController {

	@Autowired
    private ProductService productService;

	
    @RequestMapping("/")
    public String home(Model model){
    	 List<Product> products = productService.getProductList();
         model.addAttribute("products", products);

        return "index";
    }

    @RequestMapping("/login")
    public String login(
            @RequestParam(value="error", required = false)
            String error,
            @RequestParam(value="logout", required = false)
            String logout,
            Model model){

        if(error != null){
            model.addAttribute("error", "Invalid username and password");
        }

        if (logout !=null){
            model.addAttribute("msg", "You have been logged out successfully");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
@RequestMapping("/contact")
public String contact()
{
	return "contact";
}
@RequestMapping("/help")
public String help()
{
	return "help";
}
} // The End of Class;
