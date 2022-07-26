package Complejo;
public class Complejo {
  private int re;
  private int im;
 

  Complejo(){
       re=1;
       im=1;
       
   }
 
   Complejo(int r, int i){
   re=r;
   im=i;
   }
   

   Complejo(Complejo var){
       
       re=var.re;
       im=var.im;
   }

void sumar(Complejo var){
       re=re+var.re;
       im=im+var.im;
}
void sumar(Complejo var1, Complejo var2){
re=var1.re+var2.re;
im=var1.im+var2.im;
    
}


void restar(Complejo var){
re=re-var.re;
im=im-var.im;
}

void restar(Complejo var1, Complejo var2){
re=var1.re-var2.re;
im=var1.im-var2.im;
}


void imprimir(){

System.out.println("\nre="+re+"\nim="+im);
}

}