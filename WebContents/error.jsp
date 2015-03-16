<%@ page import="edu.ucla.cs.cs144.*"%>
<%@ page import="java.util.*"%>

<html>
  <head><title>Item Purchase Error</title>
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
  <div id = "body" align = "center">
    <h2>Error!!</h2>
  </div>
  </body>
</html>
