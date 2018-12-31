package com.kunitskaya.model;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.kunitskaya.service.RequestsService.requests;

public class Delete extends BasePage {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("requests", requests);

        String key = req.getParameter("key");
        req.setAttribute("key", key);

        logger.info(String.format(message, "PUT", key, StringUtils.EMPTY));

        if (requests.containsKey(key)) {
            requests.remove(key);

            //set updated requests
            req.setAttribute("requests", requests);

        } else {
            req.setAttribute("exception", String.format(exception, key));
        }
        req.getRequestDispatcher("delete.jsp").forward(req, resp);
    }
}
