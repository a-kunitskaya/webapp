package com.kunitskaya.model.implementation;

import com.kunitskaya.model.implementation.BasePage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.kunitskaya.service.RequestsService.requests;

public class Post extends BasePage {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String key = req.getParameter("key");
        String value = req.getParameter("value");

        logger.info(String.format(message, "POST", key, value));

        req.setAttribute("key", key);
        req.setAttribute("value", value);

        requests.put(key, value);

        req.setAttribute("requests", requests);

        req.getRequestDispatcher("post.jsp").forward(req, resp);
    }
}
