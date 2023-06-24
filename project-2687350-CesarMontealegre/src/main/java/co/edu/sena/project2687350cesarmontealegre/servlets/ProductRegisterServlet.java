package co.edu.sena.project2687350cesarmontealegre.servlets;

import co.edu.sena.project2687350cesarmontealegre.model.beans.Product;
import co.edu.sena.project2687350cesarmontealegre.model.respository.ProductRepositoryImpl;
import co.edu.sena.project2687350cesarmontealegre.model.respository.Repository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register-product")
public class ProductRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
    }

        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // collect all form data
        String product_name = request.getParameter("product_name");
        String product_value = request.getParameter("product_value");
        String category_id = request.getParameter("category_id");

        // fill it up in a Product bean
        Product product = new Product(product_name, product_value, category_id);
        // call Repository layer and save the product object to DB
        Repository<Product> repository = new ProductRepositoryImpl();
        int rows = 0;
        try {
            rows = repository.saveObj(product);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // todo prepare an information message for product about success or failure of the operation
        // String infoMessage = null;
        if (rows == 0) {
            // infoMessage = "Ocurrió un error!";
            System.out.println("Ocurrió un error!");
        } else {}

        // todo write the message back to the page in client browser
    }
}