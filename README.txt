Project 5
Team name: The One With The Project
Team Members:
Daksha Asrani - 304432268
Sayali Santosh Rajwade - 704406328

Q1: For which communication(s) do you use the SSL encryption?
Answer: We have used SSL encryptions for (4)->(5) and (5)->(6). These communications contain passing of the credit card number and hence SSL encryption is required.
(4)->(5) - Credit card number is sent from JSP to Servlet
(5)->(6) - Credit card number is sent from Servlet to confirmation page JSP for display


Q2: How do you ensure that the item was purchased exactly at the Buy_Price of that particular item?
Answer: We store the item details including buy price in the session and not in URL or on the page. So there isn't a way by which an attacker can change the buy price of an item before paying for it.
