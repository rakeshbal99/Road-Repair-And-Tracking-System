/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RRTS;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author rakesh
 */
public class SupervisorTest {
    
    public SupervisorTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

     @Test
    public void logIn() throws IOException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/status.txt"));
        String status = br.readLine();
        assertEquals("status", "logged in", status);
//        fail("The test case is a prototype.");
    }
    
    @Test
    public void logOut() throws IOException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/status.txt"));
        String status = br.readLine();
        assertEquals("status", "logged out", status);
//        fail("The test case is a prototype.");
    }
    
    @Test
    public void user() throws IOException, SQLException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/username.txt"));
        String status = br.readLine();
        assertEquals("username", "Pranav", status);
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("select Password from SUPERVISOR where Username='"+status+"';");
        ResultSet rs = pst.executeQuery();
        String pwd="";
        if(rs.next())
            pwd = rs.getString("Password");
        
        assertEquals("password", "P123", pwd);
    }
    
    @Test
    
    public void area() throws IOException, ClassNotFoundException, SQLException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/area.txt"));
        String status = br.readLine();
        assertEquals("username", "KGP", status);
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        
        
    }
    
}
