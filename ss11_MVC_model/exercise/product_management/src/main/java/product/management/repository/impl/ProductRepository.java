package product.management.repository.impl;

import product.management.model.Product;
import product.management.repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Mỹ Phẩm", 200000, "dưỡng", "chanel"));
        productList.add(new Product(2, "xe oto", 20000000, "cá nhân", "BMW"));
        productList.add(new Product(3, "đồng hồ", 2000000, "đồng cơ", "rolex"));
    }

    @Override
    public List<Product> findByAll() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }



    @Override
    public Product searchByID(int id) {
        return productList.get(id-1);
    }

    @Override
    public void remove(int id) {
        productList.remove(id-1);
    }

    public List<Product> search(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item : productList) {
            if (item.getName().contains(name)) {
                searchList.add(item);
            }
        }
        return searchList;
    }

    @Override
    public void update(int id, Product product) {
        productList.add(product);
    }


}
