/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Lebalang Letse'la
 */
public class MarksBean implements java.io.Serializable{

    //properties 
    private String vnum;

    private String marks;
    
    //constructor
    public MarksBean() {
    }
   
    //setters and getters
    public String getMarks() {
        return marks;
    }

    
    public void setMarks(String marks) {
        this.marks = marks;
    }

    public String getVnum() {
        return vnum;
    }
    
    public void setVnum(String vnum) {
        this.vnum = vnum;
    }

    

    
    
    
    
}
