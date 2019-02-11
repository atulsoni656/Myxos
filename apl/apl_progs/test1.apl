decl
	integer status,i,j,k,l;
enddecl
integer main()
{
       integer f1,f2,f3,count1,count2;
       integer b,c;
       
       count1=0;
       count2=0;
       
	status=Create("f1.dat");
	status=Create("f2.dat");
	
	
	f1=Open("f1.dat");
	f2=Open("f2.dat");
	
	i=20;
	while(i<60) do
	 status=Write(f1,i);
	 count1=count1+1;
 	i=i+5;
	endwhile;
	
	i=1;
	while(i<40) do
	 status=Write(f2,i);
	 count2=count2+1;
 	i=i+2;
	endwhile;
	
	status=Close(f1);
	status=Close(f2);
	
	status=Create("merge.dat");
	
	f1=Open("f1.dat");
	f2=Open("f2.dat");
	f3=Open("merge.dat");
	
	i = 0;
	j = 0;
	k = 0;
	l = 0;

	while(i<count1 && j<count2) do 
	       status=Read(f1,b);
	       status=Read(f2,c);
	       
	   if(b<=c) then
	       status=Write(f3,b);
	       status=Seek(f2,k);
	       i=i+1;
	       l=l+1;
            else 
               status=Write(f3,c);
               status=Seek(f1,l);
               j=j+1;
               k=k+1;
               endif;
	endwhile;
	
	while(i < count1) do 
	status=Read(f1,b);
	status=Write(f3,b);
	i=i+1;
	endwhile;
	
	while(j < count2) do
	status=Read(f2,c);
	status=Write(f3,c);
	j=j+1;
	endwhile;
	
	status=Close(f1);
	status=Close(f2);
	status=Close(f3);
	
	
	return 0;
}
