<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="form.css">
        <title> Update Resources</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="#e9faff">
      <div class="container">  
        <form id="contact" action="addResources.jsp" method="post">
          <h3>Update Resources</h3>
          <fieldset>
          <input placeholder="Cement" type="text" name="cement" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
          <input placeholder="Sand Trips" type="text" name="sand" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Water(in litres)" type="text" name="water" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Labourers" type="text" name="labourers" tabindex="1" required autofocus>
          </fieldset>
          
          <fieldset>
            <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
          </fieldset>
          <p class="copyright">Designed by <a href="https://colorlib.com" target="_blank" title="Colorlib">Colorlib</a></p>
        </form>
      </div>
        
    </body>
</html>




