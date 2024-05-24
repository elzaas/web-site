package com.workshhop.buysell.service;

import com.workshhop.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID,"Playstation 5","Simple description",67000,"Bishkek","John"));
        products.add(new Product(++ID,"Book","van gog",540,"Bishkek","Julie"));
    }
    public List<Product> listProducts() {
        return products;
    }
    //в список добавление товара
    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
        
    }
    public Product getProductById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) return product;
        }
            return null;
    }

}
