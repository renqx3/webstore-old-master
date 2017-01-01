package com.packt.webstore.domain.repository.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.ProductRepository;
import com.packt.webstore.exception.ProductNotFoundException;

@Repository
public class InMemoryProductRepository implements ProductRepository{

    private List<Product> listOfProducts = new ArrayList<Product>();

    public InMemoryProductRepository() {
        Product czekan = new Product("S1","grivel gt", new BigDecimal(300));
        czekan.setDescription("czekan turystyczny");
        czekan.setCategory("sprzet");
        czekan.setManufacturer("grivel");
        czekan.setUnitsInStock(100);

        Product raki = new Product("S2", "camp ctx", new BigDecimal(200));
        raki.setDescription("raki automatyczne - zajebiste tak bardzo, że  Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker");
        raki.setCategory("sprzet");
        raki.setManufacturer("camp");
        raki.setUnitsInStock(22);

        Product butySalewa = new Product("B1", "Salewa Trainer", new BigDecimal(800));
        butySalewa.setDescription("Buty wysokogórskie zimowe ");
        butySalewa.setCategory("buty");
        butySalewa.setManufacturer("SALEWA");
        butySalewa.setUnitsInStock(22);

        listOfProducts.add(czekan);
        listOfProducts.add(raki);
        listOfProducts.add(butySalewa);

    }

    public List<Product> getAllProducts() {
        return listOfProducts;
    }

    public Product getProductById(String productId) {
        Product productById = null;

        for(Product product : listOfProducts) {
            if(product!=null && product.getProductId()!=null && product.getProductId().equals(productId)){
                productById = product;
                break;
            }
        }

        if(productById == null){
            throw new ProductNotFoundException("No products found with the product id: "+ productId);
        }

        return productById;
    }

    public List<Product> getProductsByCategory(String category) {
        List<Product> productsByCategory = new ArrayList<Product>();

        for(Product product: listOfProducts) {
            if(category.equalsIgnoreCase(product.getCategory())){
                productsByCategory.add(product);
            }
        }

        return productsByCategory;
    }

    public Set<Product> getProductsByFilter(Map<String, List<String>> filterParams) {
        Set<Product> productsByBrand = new HashSet<Product>();
        Set<Product> productsByCategory = new HashSet<Product>();

        Set<String> criterias = filterParams.keySet();

        if(criterias.contains("brand")) {
            for(String brandName: filterParams.get("brand")) {
                for(Product product: listOfProducts) {
                    if(brandName.equalsIgnoreCase(product.getManufacturer())){
                        productsByBrand.add(product);
                    }
                }
            }
        }

        if(criterias.contains("category")) {
            for(String category: filterParams.get("category")) {
                productsByCategory.addAll(this.getProductsByCategory(category));
            }
        }

        productsByCategory.retainAll(productsByBrand);

        return productsByCategory;
    }

    public void addProduct(Product product) {
        listOfProducts.add(product);
    }

}
