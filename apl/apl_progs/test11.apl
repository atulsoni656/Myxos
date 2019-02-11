integer main()
{
	integer i,j,k;
	string filename;
	k=1;
	while(k!=0) do
	  print("Filename: ");
	  read(filename);
	  
	  if(filename=="exit") then
	    Exit();
	  endif;
	  
	  i=Fork();
	  
	  	if(i==-1) then
	  	  print("ERROR");
	  	endif;
	  	
	  	if(i==-2) then
	  	   j=Exec(filename);
	  	   if(j==-1) then
	  	      print("File error");
	  	      Exit();
	  	   endif;
	  	endif;
	   
	  	j=Wait(i);
	endwhile;
	
   return 0;
}
