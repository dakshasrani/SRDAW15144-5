<%@ page import="edu.ucla.cs.cs144.*"%>
<%@ page import="java.util.*"%>

<%
int itemId = (Integer)request.getAttribute("itemId");
String itemName = (String)request.getAttribute("itemName");
Float buyPrice = (Float)request.getAttribute("buyPrice");
String cardNumber= (String)request.getAttribute("cardNumber");
Date d = (Date)request.getAttribute("time");

%>
<html>
  <head><title>Item Purchase Confirmation</title>
  <link rel="stylesheet" href="css/main.css" type="text/css" />
  </head>
  <body>
    <div id="nav">
    <p class="title"><a href="http://<%= request.getServerName() %>:1448<%= request.getContextPath() %>/index.html">eBay</a></p>
    <ul id="navigation">
      <li><a href="http://<%= request.getServerName() %>:1448<%= request.getContextPath() %>/keywordSearch.html">Keyword Search</a></li>
      <li><a href="http://<%= request.getServerName() %>:1448<%= request.getContextPath() %>/getItem.html">Item Search</a></li>
    </ul>
  </div>
  <div id = "body">
    <h2 align="center">Item Purchase Confirmation</h2>
    <div id="creditCardNo" align="center">
      <table class="creditCardConfirm">
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
            <td><b>Credit Card Number:</td> <td><%= cardNumber %></td>
        </tr>
        <tr>
            <td><b>Transaction Time:</td> <td><%= d.toString() %></td>
        </tr>
      </table>
    </div>
  </div>
  </body>
</html>
