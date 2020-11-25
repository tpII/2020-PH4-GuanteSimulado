package org.tdp2.ph4;
import javax.persistence.*;


@Entity
@Table(name="ValuesMPU")
public class ValuesMPU{

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
   private long id; 
   private float ax;
   private float ay;
   private float az;
   private float gx;
   private float gy;
   private float gz;

   private int mouseX;
   private int mouseY;


public ValuesMPU(){

}


public float getAx(){
    return ax;
}


public void setAx(float ax){
    this.ax=ax;
}

public float getAy(){
    return ay;
}

public void setAy(float ay){
    this.ay=ay;
}
public float getAz(){
    return az;
}

public void setAz(float az){
    this.az=az;
}


public float getGx(){
    return gx;
}

public void setGx(float gx){
    this.gx=gx;
}


public float getGy(){
    return gy;
}

public void setGy(float gy){
    this.gy=gy;
}


public float getGz(){
    return gz;
}

public void setGz(float gz){
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