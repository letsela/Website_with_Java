
package bean;


public class SubmissionBean implements java.io.Serializable {

    //properties 
    private String fileName;
    private String snum;
    private String path;

    //constructor
    public SubmissionBean() {
    }
    
    //setters and getters
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    
    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * @return the snum
     */
    public String getSnum() {
        return snum;
    }

    /**
     * @param snum the snum to set
     */
    public void setSnum(String snum) {
        this.snum = snum;
    }

    
    
    
}
