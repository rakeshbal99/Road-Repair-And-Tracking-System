import com.meterware.httpunit.*;

//This example reads the example1.jsp from web server 
//and displays its title and content.
public class Example {


  public static void main(String args[]) {
    System.out.println("Here1");
    try {
  // create the conversation object 
  // to maintain state
      WebConversation wc = new WebConversation();
      HttpUnitOptions.setScriptingEnabled(false);

    System.out.println("Here1.5");
  // Obtain the example1.jsp
      WebRequest request = new 
      GetMethodWebRequest( "http://localhost:8080/RRTS/index.jsp" );
      WebResponse response = wc.getResponse( request );

    System.out.println("Here2");
  //Display the title
      System.out.println("Title is :" + response.getTitle() );
  //Display the content of the page
      /*System.out.println("Page content is :" + response.getText() );*/

    System.out.println("Here3");
      WebForm loginForm = response.getForms()[0];
      request = loginForm.getRequest();
      request.setParameter( "uname", "rakesh" );
      request.setParameter( "pwd", "r123" );
      response = wc.getResponse( request );
    System.out.println("Here4");
      System.out.println("Title is :" + response.getTitle() );
      // System.out.println("Page content is :" + response.getText() );

      loginForm = response.getForms()[0];
      request = loginForm.getRequest();
      response = wc.getResponse( request );

      System.out.println("Title is :" + response.getTitle() );
      /*System.out.println("Page content is :" + response.getText() );*/

      loginForm = response.getForms()[1];
      request = loginForm.getRequest();
      response = wc.getResponse( request );

      System.out.println("Title is :" + response.getTitle() );
      // System.out.println("Page content is :" + response.getText() );
      String text = response.getText();

      if (text.contains("AREA"))
       System.out.println("Found");


   } catch (Exception e) {
    System.err.println( "Exception: " + e );
  }
}
}


