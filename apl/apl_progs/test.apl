decl
	integer status,i,j;
enddecl
integer main()
{
       integer a;
       
       a=Fork();
       if(a==-2) then
          print("inside child");
         i=Wait(0);
         print("child oskg");
         	j=200;
			   while(j<301) do
				print(j);
				j=j+1;
			   endwhile;
      endif;
      
       j=0;
       print("parent printing");
       while(j<100) do
        print(j);
        j=j+1;
       endwhile;
       
       
      
        i=Signal();
        i=Signal();
        
       
	
	print("asddas");
	
	return 0;
}
