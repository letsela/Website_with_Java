
package connect.servlet;

import bean.MarksBean;
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
@WebServlet(name = "MarkServlet", urlPatterns = {"/MarkServlet"})
public class MarkServlet extends HttpServlet {
    //implicit object
    PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException{
        response.setContentType("text/html;charset=UTF-8");
        
        try{
        
        //user inputs from the form
        String number = request.getParameter("vnum");
        String score = request.getParameter("mark");
        Timestamp mdate = new Timestamp(System.currentTimeMillis());
        
        //set the attributes to javaBean
        MarksBean mark = new MarksBean();
        mark.setVnum(number);
        mark.setMarks(score);
        
        try {
            //connecting to the database
          con = DBConnection.getConnection();
          System.out.println("connection done");
          String sql = "insert into marks(marks, mdate, snum) VALUES (?,?,?)";          
          ps = con.prepareStatement(sql);
          
         //insert to table marks
          ps.setString(1, mark.getMarks());
          ps.setTimestamp(2, mdate);
          ps.setString(3, mark.getVnum());
          
          
          int i = ps.executeUpdate();
          if(i > 0){
             //send to the display page
          response.sendRedirect("display.jsp");
          
                }
          else{
              out.println("Not registered successful");
          }
         
        }catch(SQLException ex){
            out.println(ex);
        }
        
       
        }finally{
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MarkServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MarkServlet.class.getName()).log(Level.SEVERE, null, ex);
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
