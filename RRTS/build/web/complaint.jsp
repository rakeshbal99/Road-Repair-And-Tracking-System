<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Complaint Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <body>
    <form name="htmlform" method="post" action="html_form_send.php">
      <table width="450px">
      </tr>
      <tr>
            <td valign="top">
                  <label for="first_name">First Name *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="first_name" maxlength="50" size="30">
            </td>
      </tr>
      
      <tr>
            <td valign="top"">
                  <label for="last_name">Last Name *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="last_name" maxlength="50" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="email">Email Address *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="email" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="telephone">Telephone Number *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="telephone" maxlength="30" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="roadname">Road Name *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="roadname" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="location">Road Damage Location/Landmark *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="location" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="description">Description *</label>
            </td>
            <td valign="top">
                  <textarea  name="description" maxlength="1000" cols="50" rows="6"></textarea>
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="comments">Comments *</label>
            </td>
            <td valign="top">
                  <textarea  name="comments" maxlength="1000" cols="50" rows="6"></textarea>
            </td>
            
      </tr>
      <tr>
            <td colspan="2" style="text-align:center">
                  <input type="submit" value="Submit">   ( <a href="http://www.freecontactform.com/html_form.php">HTML Form</a> )
            </td>
      </tr>
</table>
</form>
</body>
</html>
