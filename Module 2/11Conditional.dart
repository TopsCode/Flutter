void main()
{
	int a = 5;
	int b = 7;

	// Conditional Statement
	var c = (a < 10) ? "Statement is Correct" : "Statement is Wrong";
	print(c);

	// Conditional statement
	int n;
	var d = n ? ? "n has Null value";
	print(d);

	// After assigning value to n
	n = 10;
	d = n ? ? "n has Null value";
	print(d);
}
