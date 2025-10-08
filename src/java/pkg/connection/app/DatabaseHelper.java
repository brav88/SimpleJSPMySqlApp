/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkg.connection.app;

import java.sql.*;

/**
 *
 * @author Samuel
 */
public class DatabaseHelper {

    Connection conn;

    public DatabaseHelper() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/myapp", "root", "Admin$1234");
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException("Class not found", ex);
        } catch (SQLException ex) {
            throw new RuntimeException("SQL Exception", ex);
        }
    }

    public void Close() throws SQLException {
        try {
            conn.close();
        } catch (SQLException ex) {
            throw ex;
        }
    }

    public ResultSet ValidateLogin(String email, String password) {
        try {
            Statement cmd = conn.createStatement();
            return cmd.executeQuery("SELECT * FROM users WHERE email='" + email + "' AND password = '" + password + "'");
        } catch (SQLException ex) {
            throw new RuntimeException("SQL Exception", ex);
        }
    }

    public ResultSet GetProducts() {
        try {
            Statement cmd = conn.createStatement();
            return cmd.executeQuery("SELECT * FROM products");
        } catch (SQLException ex) {
            throw new RuntimeException("SQL Exception", ex);
        }
    }

    public void insertProduct(int txtId, String txtName, String txtBrand, String txtSupplier, int txtPrice, String txtSize) {
        try {
            PreparedStatement pcmd
                    = conn.prepareStatement("INSERT INTO products (productId, name, brand, supplier, unit_price, size) VALUES (?, ?, ?, ?, ?, ?);");

            pcmd.setInt(1, txtId);
            pcmd.setString(2, txtName);
            pcmd.setString(3, txtBrand);
            pcmd.setString(4, txtSupplier);
            pcmd.setDouble(5, txtPrice);
            pcmd.setString(6, txtSize);

            pcmd.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException("SQL Exception", ex);
        }
    }
}
