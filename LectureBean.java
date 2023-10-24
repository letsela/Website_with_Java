
package bean;

/**
 *
 * @author Lebalang Letse'la
 */
public class LectureBean implements java.io.Serializable{
    
   
   //properties
    private String lname;
    private String lnumber;
    private String lemail;
    private String lphone;
    private String lpass;
   
    //constructor
     public LectureBean() {
    }
     //getters and setters
    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLnumber() {
        return lnumber;
    }

    public void setLnumber(String lnumber) {
        this.lnumber = lnumber;
    }

    public String getLemail() {
        return lemail;
    }

    public void setLemail(String lemail) {
        this.lemail = lemail;
    }

    public String getLphone() {
        return lphone;
    }

    public void setLphone(String lphone) {
        this.lphone = lphone;
    }

    public String getLpass() {
        return lpass;
    }

    public void setLpass(String lpass) {
        this.lpass = lpass;
    }
 
}
