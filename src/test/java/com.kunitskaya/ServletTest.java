package com.kunitskaya;


import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;


public class ServletTest {
    private static String key;
    private static String value;
    private static String args;
    private static int successStatus;

    @BeforeClass
    public static void setUp() {
        RestAssured.baseURI = "http://localhost:8080/webapp-1.0-SNAPSHOT/";

        key = RandomStringUtils.randomAlphanumeric(3, 5);
        value = RandomStringUtils.randomAlphanumeric(3, 7);
        args = "servlet?command=%s&key=%s&value=%s";

        successStatus = 200;
    }

    @Test
    public void sendGet() {
        String args = "servlet?command=get&isIndex=false";

        Response response = RestAssured.when()
                                       .get(args)
                                       .prettyPeek()
                                       .andReturn();

        Assert.assertEquals(successStatus, response.getStatusCode());
    }

    @Test
    public void sendPost() {
        String method = "post";

        Response response = RestAssured.when()
                                       .post(String.format(args, method, key, value))
                                       .prettyPeek()
                                       .andReturn();

        Assert.assertEquals(successStatus, response.getStatusCode());

        String body = response.getBody().asString();

        String responseKey = StringUtils.substringBetween(body, "Key, value from the current request: ", ":");
        String responseValue = StringUtils.substringBetween(body, responseKey + ":", "</p>");

        Assert.assertEquals(key, responseKey);
        Assert.assertEquals(value, responseValue);
    }

    @Test(dependsOnMethods = "sendPost")
    public void sendPut() {
        value = RandomStringUtils.randomAlphanumeric(3, 5);
        String method = "put";

        //since method PUT is not supported by html <form>, it's processed as POST
        Response response = RestAssured.when()
                                       .post(String.format(args, method, key, value))
                                       .prettyPeek()
                                       .andReturn();

        Assert.assertEquals(successStatus, response.getStatusCode());

        String body = response.getBody().asString();
        String responseValue = StringUtils.substringBetween(body, "Updated value '", "'");

        Assert.assertEquals(value, responseValue);

        String requestsTable = StringUtils.substringBetween(body, "<table>", "</table>");
        Assert.assertTrue(requestsTable.contains(key));
        Assert.assertTrue(requestsTable.contains(value));
    }

    @Test(dependsOnMethods = "sendPut")
    public void sendDelete() {
        args = "servlet?command=delete&key=%s";

        //since method DELETE is not supported by html <form>, it's processed as POST
        Response response = RestAssured.when()
                                       .post(String.format(args, key))
                                       .prettyPeek()
                                       .andReturn();

        Assert.assertEquals(successStatus, response.getStatusCode());

        String body = response.getBody().asString();
        String requestsTable = StringUtils.substringBetween(body, "<table>", "</table>");

        Assert.assertFalse(requestsTable.contains(key));
        Assert.assertFalse(requestsTable.contains(value));
    }
}
