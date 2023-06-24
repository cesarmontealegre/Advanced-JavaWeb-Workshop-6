package co.edu.sena.project2687350cesarmontealegre.model.respository;

import co.edu.sena.project2687350cesarmontealegre.model.beans.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();
        System.out.println("========== saveObj Insert =========="); // insert
        User userInsert = new User();
        userInsert.setUser_firstname("carlos");
        userInsert.setUser_lastname("rojas");
        userInsert.setUser_email("carlos@LoQueSea.com");
        userInsert.setUser_password("$6JH6@4w79DX4y");
        repository.saveObj(userInsert);
        userInsert.setUser_firstname("pEpE");
        userInsert.setUser_lastname("perez");
        userInsert.setUser_email("PEPE@correo.com");
        userInsert.setUser_password("p6V36%5QS0UluI");
        repository.saveObj(userInsert);

        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ==========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("========== saveObj =========="); //update
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("jorge");
        userUpdate.setUser_lastname("palacios");
        userUpdate.setUser_email("jorge@example.com");
        userUpdate.setUser_password("^JlB13L0U6MJ8s");
        repository.saveObj(userInsert);
        repository.listAllObj().forEach(System.out::println);

        System.out.println("========== saveObj =========="); //delete
        repository.deleteObj(2);
        repository.listAllObj().forEach(System.out::println);
    } // TestUserRepositoryImpl
}