void main()
{
	int a = 5;
	int b = 7;

	// Assigning value to variable c
	var c = a * b;
	print(c);

	// Assigning value to variable d
	var d;
	d ? ? = a + b; // Value is assign as it is null
	print(d);
	// Again trying to assign value to d
	d ? ? = a - b; // Value is not assign as it is not null
	print(d);
}
