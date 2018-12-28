package com.kunitskaya.model;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Get extends BasePage {
    private String message = "Received GET request";

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.info(message);

        req.getRequestDispatcher("get.jsp").forward(req, resp);
    }
}