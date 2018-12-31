package com.kunitskaya.service;

import java.util.ListResourceBundle;

public class EnLocaleBundle extends ListResourceBundle {
    public Object[][] getContents() {
        return contents;
    }

    private static final Object[][] contents = {
            {"greetings", "WELCOME!"},
            {"welcomeMsg", "This app processes your REST requests. Please click the 'START' button below to continue."}
    };
}
