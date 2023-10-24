package connect.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet(name = "DownloadServlet", urlPatterns = {"/DownloadServlet"})
public class DownloadServlet extends HttpServlet {
    
    public static int BUFFER_SIZE = 1024 * 100;
    public static final String UPLOAD_DIR = "system development";
    public static String fileName = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        fileName = request.getParameter("fileName");
        if(fileName == null || fileName.equals("")){
            
            response.setContentType("text/html;charset=UTF-8");
            
            response.getWriter().println("<h3>File " + fileName + " Is Not Present.....!</h3>");
        }
        else{
            String applicationPath = getServletContext().getRealPath("");
            String downloadPath = applicationPath + File.separator + UPLOAD_DIR;
            String filePath = downloadPath + File.separator + fileName;
            System.out.println("fileName: " + fileName);
            System.out.println("filePath: " + filePath);
            File file = new File(filePath);
            OutputStream outStream = null;
            FileInputStream inputStream = null;
            
            if(file.exists()){
                String mimeType = "application/octet-stream";
                response.setContentType(mimeType);
                
                String headerkey = "Content-Disposition";
                String headerValue = String.format("attachment; filename=\"%s\" ", file.getName());
                response.setHeader(headerkey, headerValue);
                
                try{
                    outStream = response.getOutputStream();
                    inputStream = new FileInputStream(file);
                    byte[] buffer = new byte[BUFFER_SIZE];
                    int bytesRead = -1;
                    
                    while((bytesRead = inputStream.read(buffer)) != -1){
                        outStream.write(buffer, 0, bytesRead);
                    }
                }
                catch(IOException ioExObj){
                    System.out.println("Exception While Performing The I/O operation?= " + ioExObj.getMessage());
                    
                }
                finally{
                    if(inputStream != null){
                        inputStream.close();
                    }
                    outStream.flush();
                    if(outStream != null){
                        outStream.close();
                    }
                }
                
            }
            else{
                response.setContentType("text/html");
                
                 response.getWriter().println("<h3>File " + fileName + " Is Not Present.....!</h3>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
