package com.kunitskaya.model;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Get extends BasePage {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message = "Received GET request";
        logger.info(message);

        String isIndex = req.getParameter("isIndex");

        if (Boolean.parseBoolean(isIndex)) {
            addViewsCookie(req, resp);

            req.getRequestDispatcher("index.jsp").forward(req, resp);

        } else {
            req.getRequestDispatcher("get.jsp").forward(req, resp);
        }
    }
}