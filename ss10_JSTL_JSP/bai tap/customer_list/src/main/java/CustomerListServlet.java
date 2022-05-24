import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "CustomerListServlet",urlPatterns = "/list")
public class CustomerListServlet extends javax.servlet.http.HttpServlet {
    public static List<Customer> customerList = new ArrayList<>();
    public void init() {
        customerList.add(new Customer("Mai Văn Hoàn","20/08/1983","Hà Nội","https://imgs.search.brave.com/AZOWnn-j6TZOKpHwwrw74aQ6-eLqJWgtTKs8XkPolvQ/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKeXJNNzlC/cWZTeGxrclp3YTV2/OVlsMUJ6bnNNdmRm/N0g4RnFhYz1zOTAw/LWMtay1jMHhmZmZm/ZmZmZi1uby1yai1t/bw"));
        customerList.add(new Customer("Nguyễn Văn Nam","21/08/1983","Đà Nẵng","https://imgs.search.brave.com/AZOWnn-j6TZOKpHwwrw74aQ6-eLqJWgtTKs8XkPolvQ/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKeXJNNzlC/cWZTeGxrclp3YTV2/OVlsMUJ6bnNNdmRm/N0g4RnFhYz1zOTAw/LWMtay1jMHhmZmZm/ZmZmZi1uby1yai1t/bw"));
        customerList.add(new Customer("Nguyễn Thái Hòa","22/08/1983","Sài Gòn","https://imgs.search.brave.com/AZOWnn-j6TZOKpHwwrw74aQ6-eLqJWgtTKs8XkPolvQ/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKeXJNNzlC/cWZTeGxrclp3YTV2/OVlsMUJ6bnNNdmRm/N0g4RnFhYz1zOTAw/LWMtay1jMHhmZmZm/ZmZmZi1uby1yai1t/bw"));
        customerList.add(new Customer("Trần Đăng Khoa","23/08/1983","Đà Lạt","https://imgs.search.brave.com/AZOWnn-j6TZOKpHwwrw74aQ6-eLqJWgtTKs8XkPolvQ/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKeXJNNzlC/cWZTeGxrclp3YTV2/OVlsMUJ6bnNNdmRm/N0g4RnFhYz1zOTAw/LWMtay1jMHhmZmZm/ZmZmZi1uby1yai1t/bw" ));
        customerList.add(new Customer("Nguyễn Đình Thi","24/08/1983","Vũng Tàu","https://imgs.search.brave.com/AZOWnn-j6TZOKpHwwrw74aQ6-eLqJWgtTKs8XkPolvQ/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKeXJNNzlC/cWZTeGxrclp3YTV2/OVlsMUJ6bnNNdmRm/N0g4RnFhYz1zOTAw/LWMtay1jMHhmZmZm/ZmZmZi1uby1yai1t/bw" ));
    }
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setAttribute("customerList",customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request,response);
    }
}
