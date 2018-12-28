package com.kunitskaya.model;

import com.kunitskaya.Command;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

abstract class BasePage implements Command {
    protected static String message = "Received %s request: key: %s, value: %s";
    protected static String exception = "No value for key '%s' is found. Please send a POST request containing this key";

    protected Logger logger = LogManager.getLogger();

    public abstract void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
