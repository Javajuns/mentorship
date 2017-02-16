package com.github.Javajuns.mentorship;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by admin on 16.02.2017.
 */
public class DBImpl {
    public static void main(String[] args) throws Exception {
            Class.forName("org.h2.Driver");
        Connection con= DriverManager.getConnection("jdbc:h2:mem:test", "sa", "");
        Statement stat = con.createStatement();
        String sql = "SELECT id, name,parent_id from category";
        ResultSet rs = stat.executeQuery(sql);
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            int parentId = rs.getInt("parent_id");
            System.out.println("Id: " + id);
            System.out.println("Name: " + name);
            System.out.println("Parent: " + parentId);
        }
        rs.close();


        con.close();
    }

}
