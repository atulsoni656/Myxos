decl
    integer checkprime(integer n);
enddecl

integer checkprime(integer n)
  { 
      integer result;
      integer p,i,flag;
      if(n==1) then
        result=0;
        endif;
        
        if((n==2)||(n==3)) then
          result=1;
         endif;
         
         i=2;
       p=n/2;
          while(i<=p) do
              if(n%i==0) then
               flag=1;
               endif;
               i=i+1;
          endwhile;
           
           if(flag==1) then
           result=0;
           else 
           result=1;
           endif;
           
           return(result);
    }
    
 integer main()
 {
     integer a,b,i;
     print("enter n:");
          read(a);
     i=1;
     while(i<=a) do
      b=checkprime(i);
       if(b==1) then
       print(i);
       endif;
       i=i+1;
      endwhile;   
       return 0;
 } 
     
     
     
     
     
     
          
          
