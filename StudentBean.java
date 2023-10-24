
package bean;

/**
 *
 * @author Lebalang Letse'la
 */
public class StudentBean implements java.io.Serializable{

    //properties
    private String sname;
    private String snumber;
    private String email;
    private String phone;
    private String pass;
    private String name;

    //settters and getters
    public String getName() {
        return name;
    }

    /**
     * Set the value of name
     *
     * @param name new value of name
     */
    public void setName(String name) {
        this.name = name;
    }

    ////
    public StudentBean() {
    }
    
    ///
    public String getSname() {
        return sname;
    }
    public void setSname(String sname) {
        this.sname = sname;
    }  
    public String getSnumber() {
        return snumber;
    }
    public void setSnumber(String snumber) {
        this.snumber = snumber;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setname(String ssssssssssssss) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
