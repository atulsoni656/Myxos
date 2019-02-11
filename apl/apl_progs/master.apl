decl
	integer pid,i,s;
enddecl
integer main()
{

	i=0;
	while(i<32) do
		pid = Fork();
		print(pid);
		if(pid == -2) then
			s=Exec("ex10.xsm");
			break;
		endif;
		i=i+1;
	endwhile;

	s=Wait(pid);
	return 0;
}
