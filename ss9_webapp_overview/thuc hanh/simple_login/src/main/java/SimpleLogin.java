import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SimpleLogin", urlPatterns = "/login")
public class SimpleLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("username");

        if ("admin".equals(username) && "admin".equals(password)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp") ;
            dispatcher.forward(request,response);

        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp") ;
            dispatcher.forward(request,response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
