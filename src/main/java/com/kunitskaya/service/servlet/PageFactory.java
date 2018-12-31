package com.kunitskaya.service.servlet;

import com.kunitskaya.model.Command;
import com.kunitskaya.model.implementation.Delete;
import com.kunitskaya.model.implementation.Get;
import com.kunitskaya.model.implementation.Post;
import com.kunitskaya.model.implementation.Put;

import java.util.HashMap;
import java.util.Map;

public class PageFactory {
    private static PageFactory instance;
    private Map<String, Command> pages;

    private PageFactory() {
        pages = new HashMap<>();

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
