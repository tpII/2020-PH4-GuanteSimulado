package org.tdp2.ph4;
import javax.persistence.*;


@Entity
@Table(name="ValuesMPU")
public class ValuesMPU{

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
   private long id; 
   private int ax;
   private int ay;
   private int az;
   private int gx;
   private int gy;
   private int gz;

   private int mouseX;
   private int mouseY;


public ValuesMPU(){

}

public ValuesMPU(int ax, int ay, int az, int gx, int gy, int gz, int mx, int my){
    this.ax=ax;
    this.ay=ay;
    this.az=az;
    this.gx=gx;
    this.gy=gy;
    this.gz=gz;
    this.mouseX=mx;
    this.mouseY=my;
    System.out.println("SE CREO UN VALUEMPU:"+this.ax+","+ this.ay+","+ this.az+","+ this.gx+","+ this.gy+","+ this.gz+","+ this.mouseX+","+ this.mouseX);
}


public int getAx(){
    return ax;
}


public void setAx(int ax){
    this.ax=ax;
}

public int getAy(){
    return ay;
}

public void setAy(int ay){
    this.ay=ay;
}
public int getAz(){
    return az;
}

public void setAz(int az){
    this.az=az;
}


public int getGx(){
    return gx;
}

public void setGx(int gx){
    this.gx=gx;
}


public int getGy(){
    return gy;
}

public void setGy(int gy){
    this.gy=gy;
}


public int getGz(){
    return gz;
}

public void setGz(int gz){
    this.gz=gz;
}

public int getMouseX(){
    return mouseX;
}

public void setMouseX(int mouseX){
    this.mouseX=mouseX;
}

public int getMouseY(){
    return mouseY;
}

public void setMouseY(int mouseY){
    this.mouseY=mouseY;
}





}