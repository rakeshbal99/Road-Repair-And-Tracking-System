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
    <form name="htmlform" method="post" action="addComplaint.jsp">
      <table width="450px">
      <tr>
            <td valign="top">
                  <label for="name">Name </label>
            </td>
            <td valign="top">
                  <input  type="text" name="name" maxlength="50" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="email">Email Address </label>
            </td>
            <td valign="top">
                  <input  type="text" name="email" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="telephone">Telephone Number </label>
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
                  <input  type="text" name="roadname" maxlength="80" size="30" required>
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="location">Road Damage Location/Landmark *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="location" maxlength="80" size="30" required>
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="area">Area *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="area" maxlength="80" size="30" required>
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="description">Description *</label>
            </td>
            <td valign="top">
                  <textarea  name="description" maxlength="1000" cols="50" rows="6" required></textarea>
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="comments">Comments *</label>
            </td>
            <td valign="top">
                  <textarea  name="comments" maxlength="1000" cols="50" rows="6" required></textarea>
            </td>
            
      </tr>
      <tr>
            <td colspan="2" style="text-align:center">
                  <input type="submit" value="Submit">   ( HTML Form )
            </td>
      </tr>
</table>
</form>
</body>
</html>
