<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title> Update Work Done</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <body>
    <form name="htmlform" method="post" action="addWorkDone.jsp">
      <table width="450px">
      <tr>
            <td valign="top">
                  <label for="ComplaintID">ComplaintID *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="ComplaintID" maxlength="80" size="30">
            </td>
            
      </tr>
        <tr>
            <td valign="top">
                  <label for="cement_used">Cement Used *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="cement_used" maxlength="50" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="sand_used">Sand Trips Used *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="sand_used" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="water_used">Water Used (in litres) * </label>
            </td>
            <td valign="top">
                  <input  type="text" name="water_used" maxlength="30" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="labourers_used">Labourers Used*</label>
            </td>
            <td valign="top">
                  <input  type="text" name="labourers_used" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="percent">Percentage Work Done *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="percent" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="cement_required">Cement Required *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="cement_required" maxlength="50" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="sand_required">Sand Trips Required *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="sand_required" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td valign="top">
                  <label for="water_required">Water Required (in litres) * </label>
            </td>
            <td valign="top">
                  <input  type="text" name="water_required" maxlength="30" size="30">
            </td>
      </tr>
      <tr>
            <td valign="top">
                  <label for="labourers_required">Labourers Required *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="labourers_required" maxlength="80" size="30">
            </td>
            
      </tr>
      
      <tr>
            <td valign="top">
                  <label for="area">Area *</label>
            </td>
            <td valign="top">
                  <input  type="text" name="area" maxlength="80" size="30">
            </td>
            
      </tr>
      <tr>
            <td colspan="2" style="text-align:center">
                  <input type="submit" value="Submit">   (HTML Form )
            </td>
      </tr>
</table>
</form>
</body>
</html>


