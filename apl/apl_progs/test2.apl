integer main ()
{
	integer s, t;

	s = Fork ();

	print ("aaa");
	if (s == -2) then
		s = Getppid ();
		print (s);
		t = Wait (s);
		print ("asfda");
		t = Signal ();
		print ("abc");
		t = Exec ("even.xsm");
		
	endif;

	print (s);
	
	print ("i am free");
	print ("i am free");
	print ("i am free");
	print ("i am free");
	print ("i am free");
	t = Wait (s);
	print ("i am free");
	print ("i am free");
	print ("i am free");
	print ("i am free");
	t = Signal ();
	print ("i am free");
	print ("i am free");
	print ("i am free");
	print ("i am free");

	print ("i am free");
	print ("i am free");
	print ("i am free");
	print ("i am free");

	return 0;
}
