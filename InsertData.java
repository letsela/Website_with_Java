package connect.servlet;

import bean.StudentBean;
import connect.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lebalang Letse'la
 */
@WebServlet(name = "InsertData", urlPatterns = {"/InsertData"})
public class InsertData extends HttpServlet {
//implicit object
    PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    
    //
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException{
        response.setContentType("text/html;charset=UTF-8");
        
        try{
        String main = request.getParameter("action");
        if(main.equals("SignIn")){
            //the information from the user
        String name = request.getParameter("sname");
        String stunum = request.getParameter("snumber");
        String email = request.getParameter("email");
        String phonenum = request.getParameter("phone");
        String password = request.getParameter("pass");
        Timestamp registeredDate = new Timestamp(System.currentTimeMillis());
        
                
        
        try {
            //connecting to the database
          con = DBConnection.getConnection();
          System.out.println("connection done");
          String sql = "insert into submit (sname, snumber, email, phone, pass, registeredDate) VALUES (?,?,?,?,?,?)";          
          ps = con.prepareStatement(sql);
          //insert into tables
          ps.setString(1, name);
          ps.setString(2, stunum);
          ps.setString(3, email);
          ps.setString(4, phonenum);
          ps.setString(5, password);
          ps.setTimestamp(6, registeredDate);
          
          //set the attributes to javaBean
        StudentBean student = new StudentBean();
        student.setSname(name);
        student.setSnumber(stunum);
        student.setEmail(email);
        student.setPhone(phonenum);
        student.setPass(password);

          
          int i = ps.executeUpdate();
          if(i > 0){
              //session = request.getSession(true);
//          session.setAttribute("username", name);
         //session.getValue("username", name);
         //send to the login page
          response.sendRedirect("Login.jsp");
          
          System.out.println("registered successful");
          
                }
          else{
              System.out.println("Not registered successful");
          }
        
        }catch(SQLException ex){
            out.println(ex);
        }
        } 
            
        }
        finally{
            try{
                if(ps != null){
                    ps.close();
                }
                if(con != null){
                    con.close();
                }
            }
            catch(SQLException ex){
               
                System.out.println(ex);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(InsertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
