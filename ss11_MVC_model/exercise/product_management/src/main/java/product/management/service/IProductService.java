package product.management.service;

import product.management.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findByAll();

    void add(Product product);

    Product searchByID(int id);

    void remove(int id);

    List<Product> searchByName(String name);

    void update(int id,Product product);
}
