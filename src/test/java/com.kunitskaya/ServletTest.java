//package com.kunitskaya;
//
//import io.restassured.RestAssured;
//import io.restassured.response.Response;
//import org.apache.http.HttpStatus;
//import org.testng.annotations.BeforeClass;
//import org.testng.annotations.DataProvider;
//import org.testng.annotations.Ignore;
//import org.testng.annotations.Test;
//
//import static org.testng.AssertJUnit.assertEquals;
//
//
//public class ServletTest {
//
//    @BeforeClass
//    public void setUp()
//    {
//        RestAssured.baseURI = "http://localhost:8080/webapp-1.0-SNAPSHOT";
//    }
//
//    @Test(dataProvider = "uriDataProvider")
//    public void sendGet(String uri){
//        Response response = RestAssured.when()
//                                       .get(uri)
//                                       .andReturn();
//        assertEquals(HttpStatus.SC_OK, response.getStatusCode());
//    }
//
//    @DataProvider
//    public Object[][] uriDataProvider() {
//        return new Object[][]{
//                {"index.jsp"},
//                {"servlet"}
//        };
//    }
//}
