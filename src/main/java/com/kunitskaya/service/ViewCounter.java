package com.kunitskaya.service;

public class ViewCounter {
    private static int viewsCount;

    public static synchronized int getViewsCount() {
        viewsCount++;
        return viewsCount;
    }
}
