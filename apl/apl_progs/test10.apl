integer main()
{
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("test10.xsm");
	else
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;
   return 0;
}
