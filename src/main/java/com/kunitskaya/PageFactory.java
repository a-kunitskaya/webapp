package com.kunitskaya;

import com.kunitskaya.model.Put;

import java.util.HashMap;
import java.util.Map;

public class PageFactory {
    private Map<String, Command> pages;

    public PageFactory() {
        pages = new HashMap<String, Command>();

        pages.put("put", new Put());
    }
}
