<%@ page import="edu.ucla.cs.cs144.*"%>
<%@ page import="java.util.*"%>

<%
int itemId = (Integer)session.getAttribute("itemId");
String itemName = (String)session.getAttribute("itemName");
Float buyPrice = (Float)session.getAttribute("buyPrice");
%>

<html>
  <head><title>Credit Card Details</title>
  <link rel="stylesheet" href="css/main.css" type="text/css" />

  <script type="text/javascript">

 /*function test(){
   var cardNumber = document.getElementById('cardNumber').value;
   alert(cardNumber + "Test");
 } */

 function validateCardNumber() {
   var cardNumber = document.getElementById('cardNumber').value;
   var valid = true;
   if (cardNumber=="")
   {
    alert("Please enter a Credit Card Number.");
    return false;
   }

  else {
    var reg = /^[0-9-\s]*$/;
    if (!reg.test(cardNumber)) {
     document.getElementById('cardNumber').value = "";
     alert("Invalid Card Number. Please re-enter a valid Credit Card Number.");
     return false;
   }
  }
 }

  </script>
  </head>
  <body>
    <div id="nav">
    <p class="title"><a href="/eBay/index.html">eBay</a></p>
    <ul id="navigation">
      <li><a href="/eBay/keywordSearch.html">Keyword Search</a></li>
      <li><a href="/eBay/getItem.html">Item Search</a></li>
    </ul>
  </div>
  <div id = "body">
    <h2 align = "center">Item Purchase</h2>
    <div id="creditCardNo" align="center">
      <form method = "POST" action="https://<%= request.getServerName() %>:8443<%= request.getContextPath() %>/payment">
      <table class="creditCardInput">
        <tr>
            <td><b>Item ID:</td> <td><%= itemId%></td>
        </tr>

        <tr>
            <td><b>Item Name:</td> <td><%= itemName%></td>
        </tr>

        <tr>
            <td><b>Buy Price:</td> <td><%= buyPrice%></td>
        </tr>

        <tr>
            <td><b>Enter Credit Card Number:</td>
            <td><input type="text" name="cardNumber" id="cardNumber"></td>
        </tr>
      </table>

      <br />
        <input type="submit" value="Submit" onClick = "return validateCardNumber();">
      </form>
    </div>
  </div>
  </body>
</html>
