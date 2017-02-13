package com.github.mentorship;

/**
 * Created by admin on 05.02.2017.
 */
public class UserData {
    String username;
    String email;
    int age;
    public int getAge() {
        return age;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
