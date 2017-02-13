package com.github.mentorship;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 13.02.2017.
 */
public class DB {
    public static final List<String> comments = new ArrayList<String>();

    static {
        DB.comments.add("Cool");
        DB.comments.add("Not cool");
    }
}
