package com.kunitskaya;

import com.kunitskaya.model.Delete;
import com.kunitskaya.model.Get;
import com.kunitskaya.model.Post;
import com.kunitskaya.model.Put;

import java.util.HashMap;
import java.util.Map;

public class PageFactory {
    public static PageFactory instance;
    private Map<String, Command> pages;

    private PageFactory() {
        pages = new HashMap<String, Command>();

        pages.put("get", new Get());
        pages.put("post", new Post());
        pages.put("put", new Put());
        pages.put("delete", new Delete());
    }

    public static PageFactory getInstance() {
        if (instance == null) {
            instance = new PageFactory();
        }
        return instance;
    }

    public Command getPage(String name) {
        if (pages.containsKey(name)) {
            return pages.get(name);
        } else {
            throw new IllegalArgumentException("No page is found for name: " + name);
        }
    }
}
