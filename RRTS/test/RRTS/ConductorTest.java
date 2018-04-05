/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RRTS;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
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
public class ConductorTest {
    
    public ConductorTest() {
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
    public void user() throws IOException {
        // TODO review the generated test code and remove the default call to fail.
        BufferedReader br = new BufferedReader(new FileReader("/home/rakesh/RRTS/username.txt"));
        String status = br.readLine();
        assertEquals("username", "shyam", status);
    }
    
}
