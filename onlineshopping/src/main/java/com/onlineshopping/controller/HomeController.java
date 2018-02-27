package com.onlineshopping.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
    
    @RequestMapping("/customer/")
    public String allProduct(Model model) {
    	List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
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
    @RequestMapping("/logout")
    public String logout(HttpServletRequest req,HttpServletResponse rep) {
    	 Authentication auth=SecurityContextHolder.getContext().getAuthentication();
    	 if(auth!=null)
    	 {
    		 new SecurityContextLogoutHandler().logout(req, rep, auth);
    	 }
    	 return "redirect:/login?logout";
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
