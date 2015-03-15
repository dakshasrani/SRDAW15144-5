<%@ page import="edu.ucla.cs.cs144.*"%>
<%@ page import="java.util.*"%>

<%


int itemId = (Integer)session.getAttribute("itemId");
String itemName = (String)session.getAttribute("itemName");
Float buyPrice = (Float)session.getAttribute("buyPrice");

session.setAttribute("itemId", itemId);
session.setAttribute("itemName",itemName);
session.setAttribute("buyPrice",buyPrice);

String serverName = (String)request.getAttribute("serverName");
int serverPort = (Integer)request.getAttribute("serverPort");

String sPort = "" + serverPort;

String url = "https://" + serverName + ":" + sPort + "/eBay/confirmationPage.jsp";
%>

<html>
  <head><title>Credit Card Details</title>
  <link rel="stylesheet" href="css/main.css" type="text/css" />
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
      <table class="creditCardInput" border="0">
        <tr>
            <td><b>Item ID:</td> <td><%= itemId%></td>
        </tr>
        <tr>
            <td><b>Item Name:</td> <td><%= itemName%></td>
        </tr>
        <tr>
            <td><h4>Buy Price:</td> <td><%= buyPrice%></td>
        </tr>
        <tr>
            <td>Enter Credit Card Number:</td>
            <form method = "POST" action="payment"><td><input type="text" name="cardNumber" id="cardNumber"></td>
        </tr>
      </table>

      <br />
        <input type="submit" value="Submit"></form>
    </div>
  </div>
  <script>
  function validateCardNumber() {
    var cardNumber = document.getElementById("cardNumber");
    // Strip spaces and dashes
    cardNumber = cardNumber.replace(/[ -]/g, '');
    // See if the card is valid
    // The regex will capture the number in one of the capturing groups
    var match = /^(?:(4[0-9]{12}(?:[0-9]{3})?)|(5[1-5][0-9]{14})|(6(?:011|5[0-9]{2})[0-9]{12})|(3[47][0-9]{13})|(3(?:0[0-5]|[68][0-9])↵
    [0-9]{11})|((?:2131|1800|35[0-9]{3})[0-9]{11}))$/.exec(cardnumber);
    if (!match) {
      document.getElementById("cardNumber").value = "";
      document.alert("Invalid Card Number");
    }
  }
  </script>
  </body>
</html>
