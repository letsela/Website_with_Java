
package connect.servlet;

import bean.SubmissionBean;
import connect.DBConnection;
import connect.Database;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;



/**
 *
 * @author Lebalang Letse'la
 */
@WebServlet(name = "SubmitServlet", urlPatterns = {"/SubmitServlet"})
    //set the size of the file
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 1000,
        maxRequestSize = 1024 * 1024 * 1000)
public class SubmitServlet extends HttpServlet {
    
    //implicit object
    PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
            
            String submit = request.getParameter("kwete");
            if(submit.equals("Submit")){
                //set the file path for browsing the document
            out = response.getWriter();
            session = request.getSession();
            String folderName = "system development";
            String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;
            
            File dir = new File(uploadPath);
            if(!dir.exists()){
                dir.mkdirs();
            }
            
            //user input from the form studenthome page
            Part filePart = request.getPart("filename");
            String fileName = filePart.getSubmittedFileName();
            String path = folderName + File.separator + fileName;
            Timestamp submitdate = new Timestamp(System.currentTimeMillis());
            String number = request.getParameter("snum");
            System.out.println("fileName: " + fileName);
            System.out.println("Path: " + uploadPath);
            
            InputStream is = filePart.getInputStream();
            Files.copy(is, Paths.get(uploadPath, File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);
            
            //set data to the javaBean
            SubmissionBean bean = new SubmissionBean();
            bean.setFileName(fileName);
            bean.setPath(path);
            bean.setSnum(number);
            
            
            try{
                //connecting to database
               con = Database.getConnection();
                System.out.println("Connection done");
                String mysql = "insert into filesub(filename, path, submitdate, snum) VALUES (?,?,?,?)";
                ps = con.prepareStatement(mysql);
                
                //insert to the table filesub
                ps.setString(1, bean.getFileName());
                ps.setString(2, bean.getPath());
                ps.setTimestamp(3, submitdate);
                ps.setString(4, bean.getSnum());
                
                int i = ps.executeUpdate();
                if(i > 0){
                    session.setAttribute("fileName", fileName);
                    String text = "" + fileName + " File upload sucessfully....";
                    request.setAttribute("msg", text);
                    
                    response.sendRedirect("Successful.jsp");
                    
                    System.out.println("File uploaded successfully...");
                    
                    
//                    RequestDispatcher rd = request.getRequestDispatcher("/successSubmit.jsp");
////                    rd.forward(request, response);
                    
                    System.out.println("Uploaded path: " + uploadPath);
                } 
                else{
                    System.out.println("File not uploaded successfully...");
                }
            }
            catch(SQLException ex){
                out.println("Exception: " + ex);
                System.out.println("Exception: " + ex);
            }
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
                out.println(ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(SubmitServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(SubmitServlet.class.getName()).log(Level.SEVERE, null, ex);
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
