package com.kunitskaya;

import com.kunitskaya.service.ViewCounter;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.kunitskaya.service.RequestsService.requests;

public class Controller extends HttpServlet {
    private Logger logger = LogManager.getLogger();
    private static String message = "Received %s request: key: %s, value: %s";
    private static String exception = "No value for key '%s' is found. Please send a POST request containing this key";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        logger.info(String.format(message, "GET", StringUtils.EMPTY, StringUtils.EMPTY));

        req.getRequestDispatcher("get.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String key = req.getParameter("key");
        String value = req.getParameter("value");

        logger.info(String.format(message, "POST", key, value));

        req.setAttribute("key", key);
        req.setAttribute("value", value);

        requests.put(key, value);

        req.setAttribute("requests", requests);

        req.getRequestDispatcher("post.jsp").forward(req, resp);
    }

    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie cookie = new Cookie("views", String.valueOf(ViewCounter.getViewsCount()));
        resp.addCookie(cookie);

        req.setAttribute("requests", requests);

        String key = req.getParameter("key");

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