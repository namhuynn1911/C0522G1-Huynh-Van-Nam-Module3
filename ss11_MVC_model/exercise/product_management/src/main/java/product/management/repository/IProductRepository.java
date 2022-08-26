package product.management.repository;

import product.management.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findByAll();

    void add(Product product);


    Product searchByID(int id);

    void remove(int id);

    List<Product> search(String name);

    void update(int id,Product product);
}
