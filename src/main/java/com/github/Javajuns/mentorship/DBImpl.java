package com.github.Javajuns.mentorship;

import java.io.FileNotFoundException;
import java.sql.*;

/**
 * Created by admin on 16.02.2017.
 */
public class DBImpl {
    public synchronized static int update(String query) throws SQLException, ClassNotFoundException {
        Class.forName("org.h2.Driver");
        Connection con= DriverManager.getConnection("jdbc:h2:mem:default", "sa", "");
        Statement stmt = con.createStatement();
        //String sql = "SELECT id, name,parent_id from category";
        //ResultSet rs = stmt.executeQuery(sql);
        int result = stmt.executeUpdate(query);
        return result;

        /*while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            int parentId = rs.getInt("parent_id");
            System.out.println("Id: " + id);
            System.out.println("Name: " + name);
            System.out.println("Parent: " + parentId);
        }
        rs.close();


        con.close();*/
    }
    public synchronized static ResultSet select (String query) throws SQLException, ClassNotFoundException {
        Class.forName("org.h2.Driver");
        Connection connection = DriverManager.getConnection("jdbc:h2:mem:default", "sa", "");
        Statement stmt = connection.createStatement();
        ResultSet result = stmt.executeQuery(query);
        return result;
    }


}
