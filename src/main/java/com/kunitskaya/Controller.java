package com.kunitskaya;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.kunitskaya.service.RequestsService.postRequests;

public class Controller extends HttpServlet
{
	private Logger logger = LogManager.getLogger();
	private static String message = "Received %s request: key: %s, values: %s";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.getRequestDispatcher("get.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		String key = req.getParameter("key");
		String value = req.getParameter("value");

		logger.info(String.format(message, "POST", key, value));

		req.setAttribute("key", key);
		req.setAttribute("value", value);

		postRequests.put(key, value);

		req.setAttribute("requests", postRequests);

		req.getRequestDispatcher("post.jsp").forward(req, resp);
	}
}
