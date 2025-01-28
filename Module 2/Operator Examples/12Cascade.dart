class TOPS {
	var a;
	var b;

	void set(x, y)
	{
		this.a = x;
		this.b = y;
	}

	void add()
	{
		var z = this.a + this.b;
		print(z);
	}
}

void main()
{
	// Creating objects of class TOPS 
	TOPS tops1 = new TOPS();
	TOPS tops2 = new TOPS();

	// Without using Cascade Notation
	tops1.set(1, 2);
	tops1.add();

	// Using Cascade Notation
	tops2..set(3, 4)
		..add();
}
