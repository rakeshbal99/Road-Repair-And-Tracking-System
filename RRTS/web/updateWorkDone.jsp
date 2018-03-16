<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="form.css">
        <title> Update Work Done</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor="#e9faff">

      <div class="container">  
        <form id="contact" action="addWorkDone.jsp" method="post">
          <h3>Update Work Done</h3>
          
          <fieldset>
            <input placeholder="ComplaintID" type="text" name="ComplaintID" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
          <input placeholder="Cement Used" type="text" name="cement_used" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
          <input placeholder="Sand Trips Used" type="text" name="sand_used" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Water(in litres) Used" type="text" name="water_used" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Labourers Used" type="text" name="labourers_used" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Percentage Work Done" type="text" name="percent" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
          <input placeholder="Cement Required" type="text" name="cement_required" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
          <input placeholder="Sand Trips Required" type="text" name="sand_required" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Water(in litres) Required" type="text" name="water_required" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Labourers Required" type="text" name="labourers_required" tabindex="1" required autofocus>
          </fieldset>

          <fieldset>
            <input placeholder="Area" type="text" name="area" tabindex="1" required autofocus>
          </fieldset>
          
          <fieldset>
            <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
          </fieldset>
          <p class="copyright">Designed by <a href="https://colorlib.com" target="_blank" title="Colorlib">Colorlib</a></p>
        </form>
      </div>
        
   </body>
</html>


