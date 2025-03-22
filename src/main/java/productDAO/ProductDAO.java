package productDAO;

import dao.DBConnection;
import java.util.List;
import model.*;
import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ProductDAO implements IProductDAO {

    private EntityManager em;

    public ProductDAO() {
        em = DBConnection.getEntityManager();
    }

    @Override
    public List<Products> searchProduct(String keyword) throws NoResultException {
        TypedQuery<Products> query = em.createNamedQuery("Products.searchProducts", Products.class);
        query.setParameter("keyword", "%" + keyword + "%");
        return query.getResultList();
    }

    @Override
    public Products selectProduct(int id) throws NoResultException {
        TypedQuery<Products> query = em.createNamedQuery("Products.selectByID", Products.class);
        query.setParameter("productID", id);
        return query.getSingleResult();
    }

    @Override
    public List<Products> selectAllProducts() throws NoResultException {
        TypedQuery<Products> query = em.createNamedQuery("Products.selectAll", Products.class);
        return query.getResultList();
    }

    //retrieve a category list from Categories table
    //pass this information to the ProductServlet to display on the USER PAGE FUCKING USER PAGE NIGGER
    public List<Categories> selectAllCategory() throws NoResultException {
        TypedQuery<Categories> query = em.createNamedQuery("Categories.findAll", Categories.class);
        return query.getResultList();
    }

    @Override
    public Map<Integer, Long> getTotalSoldByProduct() throws NoResultException {
        TypedQuery<Object[]> query = em.createQuery(
                "SELECT psc.productID.productID, SUM(od.quantity) "
                + "FROM Orderdetails od "
                + "JOIN od.productSizeColorID psc "
                + "GROUP BY psc.productID.productID",
                Object[].class
        );
        List<Object[]> soldData = query.getResultList();

        Map<Integer, Long> soldMap = new HashMap<>();
        for (Object[] data : soldData) {
            Integer productId = (Integer) data[0];
            Long totalSold = (Long) data[1];
            soldMap.put(productId, totalSold);
        }
        return soldMap;
    }

    @Override
    public Map<Integer, Double> getAverageRatingByProduct() throws NoResultException {
        TypedQuery<Object[]> query = em.createQuery(
                "SELECT r.productID.productID, AVG(r.rating) "
                + "FROM Reviews r "
                + "GROUP BY r.productID.productID",
                Object[].class
        );
        List<Object[]> ratingData = query.getResultList();

        Map<Integer, Double> ratingMap = new HashMap<>();
        for (Object[] data : ratingData) {
            Integer productId = (Integer) data[0];
            Double avgRating = (Double) data[1];
            ratingMap.put(productId, avgRating);
        }
        return ratingMap;
    }

    @Override
    public List<Products> getAllProductsSortedByPrice(String sortOrder) throws NoResultException {
        try {
            String jpql = "SELECT p FROM Products p ORDER BY (p.price - (p.price * p.discount / 100)) "
                    + (sortOrder != null && sortOrder.equals("desc") ? "DESC" : "ASC");
            TypedQuery<Products> query = em.createQuery(jpql, Products.class);
            List<Products> results = query.getResultList();

            if (results == null || results.isEmpty()) {
                throw new NoResultException("No products found");
            }
            return results;
        } catch (Exception e) {
            throw new NoResultException("Error retrieving sorted products: " + e.getMessage());
        }
    }
    
    public List<Products> sortProductsByPrice(List<Products> list, String sortOrder) {
        List<Products> sortedList = new ArrayList<>(list);
        if (sortOrder != null) {
            sortedList.sort((p1, p2) -> {
                if (sortOrder.equalsIgnoreCase("asc")) {
                    return p1.getPrice().compareTo(p2.getPrice());
                } else if (sortOrder.equalsIgnoreCase("desc")) {
                    return p2.getPrice().compareTo(p1.getPrice());
                } else {
                    return 0;
                }
            });
        }
        return sortedList;
    }
}
