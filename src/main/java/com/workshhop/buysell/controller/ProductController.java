package com.workshhop.buysell.controller;

import com.workshhop.buysell.models.Product;
import org.springframework.ui.Model;
import com.workshhop.buysell.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;

    @GetMapping("/")
    public String products( Model model){
        model.addAttribute("products", productService.listProducts());
        return "products";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        if (product == null) {
            model.addAttribute("errorMessage", "Товар не найден");
            return "error";
        }
        model.addAttribute("product", product);
        return "product-info";
    }
    @PostMapping("/product/create")
    public String createProduct( Product product){
       productService.saveProduct(product);
       return "redirect:/";
    }
    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id){
        productService.deleteProduct(id);
        return "redirect:/";

    }

}
