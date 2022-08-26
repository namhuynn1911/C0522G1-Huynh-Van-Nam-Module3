package product.management.service.imp;

import product.management.model.Product;
import product.management.repository.IProductRepository;
import product.management.repository.impl.ProductRepository;
import product.management.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository iProductRepository = new ProductRepository();

    @Override
    public List<Product> findByAll() {
        return iProductRepository.findByAll();
    }

    @Override
    public void add(Product product) {
        iProductRepository.add(product);
    }

    @Override
    public Product searchByID(int id) {
        return iProductRepository.searchByID(id);
    }

    @Override
    public void remove(int id) {
        iProductRepository.remove(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        return iProductRepository.search(name);
    }

    @Override
    public void update(int id, Product product) {
        iProductRepository.searchByID(product.getId());
    }
}
