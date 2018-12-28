//package com.kunitskaya;
//
//import com.github.tomakehurst.wiremock.WireMockServer;
//import com.github.tomakehurst.wiremock.junit.WireMockRule;
//import io.restassured.RestAssured;
//import io.restassured.response.Response;
//import org.apache.http.HttpResponse;
//import org.apache.http.client.methods.HttpGet;
//import org.apache.http.impl.client.CloseableHttpClient;
//import org.apache.http.impl.client.HttpClients;
//import org.junit.Assert;
//import org.junit.BeforeClass;
//import org.junit.Rule;
//import org.junit.Test;
//import org.junit.jupiter.api.AfterEach;
//import org.junit.jupiter.api.BeforeEach;
//
//import javax.servlet.jsp.jstl.sql.Result;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.util.Scanner;
//
//import static com.github.tomakehurst.wiremock.client.WireMock.*;
//
///**
// * Created by Alexandra Kunitskaya
// */
//public class BaseTest {
//    WireMockServer wireMockServer;
//
//    @BeforeEach
//    public void setup () {
//        wireMockServer = new WireMockServer(8090);
//        wireMockServer.start();
//        setupStub();
//    }
//
//    public void setupStub() {
//        wireMockServer.stubFor(get(urlEqualTo("/an/endpoint"))
//                .willReturn(aResponse().withHeader("Content-Type", "text/plain")
//                        .withStatus(200)
//                        .withBodyFile("json/glossary.json")));
//    }
//
//    @Test
//    public void testStatusCodePositive() {
//        RestAssured.given().
//                when().
//                get("http://localhost:8080/an/endpoint").
//                then().
//                assertThat().statusCode(200);
//    }
//
//    @Test
//    public void testStatusCodeNegative() {
//        RestAssured.given().
//                when().
//                get("http://localhost:8080/another/endpoint").
//                then().
//                assertThat().statusCode(404);
//    }
//
//    @Test
//    public void testResponseContents() {
//        Response response =  RestAssured.given().when().get("http://localhost:8090/an/endpoint");
//        String title = response.jsonPath().get("glossary.title");
//        System.out.println(title);
//        Assert.assertEquals("example glossary", title);
//    }
//
//    @AfterEach
//    public void teardown () {
//        wireMockServer.stop();
//    }
//
//}
