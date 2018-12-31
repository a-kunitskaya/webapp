package com.kunitskaya.model.implementation;

import com.kunitskaya.model.implementation.BasePage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.kunitskaya.service.RequestsService.requests;

public class Put extends BasePage {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String key = req.getParameter("key");
        String value = req.getParameter("value");

        logger.info(String.format(message, "PUT", key, value));

        req.setAttribute("key", key);
        req.setAttribute("value", value);
        req.setAttribute("requests", requests);

        if (requests.containsKey(key)) {

            //update value for existing key
            requests.put(key, value);

            //set updated requests
            req.setAttribute("requests", requests);

        } else {
            req.setAttribute("exception", String.format(exception, key));
        }

        req.getRequestDispatcher("put.jsp").forward(req, resp);
    }
}
