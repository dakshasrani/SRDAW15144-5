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

        if(!request.isSecure())
            error = true;

        if(session.getAttribute("itemId")==null)
            error = true;

        else {
            int itemId = (Integer)session.getAttribute("itemId");
            String itemName = (String)session.getAttribute("itemName");
            Float buyPrice = (Float)session.getAttribute("buyPrice");
            Date d = new Date(session.getCreationTime());

            if(itemId==0)
                error = true;
            else
            {
                String cardNumber = (String)request.getParameter("cardNumber");
                request.setAttribute("itemId", itemId);
                request.setAttribute("itemName", itemName);
                request.setAttribute("buyPrice", buyPrice);
                request.setAttribute("cardNumber",cardNumber);
                request.setAttribute("time",d);
                session.removeAttribute("itemId");
                session.removeAttribute("itemName");
                session.removeAttribute("buyPrice");
            }

        }

        if(error)
            request.getRequestDispatcher("error.jsp").forward(request, response);
        else
            request.getRequestDispatcher("confirmationPage.jsp").forward(request, response);

    }

    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }
}
