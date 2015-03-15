import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Date;

public class PaymentServlet extends HttpServlet implements Servlet {
    
    public PaymentServlet() {}
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
        boolean error = false;
        int itemId = (Integer)session.getAttribute("itemId");
        String itemName = (String)session.getAttribute("itemName");
        Float buyPrice = (Float)session.getAttribute("buyPrice");
        
        if(itemId==0)
            error = true;
        else
        {
            String cardNumber = (String)request.getParameter("cardNumber");
            request.setAttribute("itemId", itemId);
            request.setAttribute("itemName", itemName);
            request.setAttribute("buyPrice", buyPrice);
            request.setAttribute("serverName", request.getServerName());
            request.setAttribute("serverPort", request.getServerPort());
            session.removeAttribute("itemId");
            session.removeAttribute("itemName");
            session.removeAttribute("buyPrice");
        }
        
        if(error)
            request.getRequestDispatcher("/error.html").forward(request, response);
        else
            getServletContext().getRequestDispatcher("https://localhost:8443/eBay/confirmationPage.jsp").forward(request, response);
        
    }
    
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
}
