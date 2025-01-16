void main() {
  const double pi = 3.14159;  // pi is known at compile-time

  print(pi);  // Prints 3.14159
  
  // pi = 3.14;  // Error: Can't assign to the constant variable 'pi'

 
  final DateTime currentTime = DateTime.now();  // This value is determined at runtime

  print(currentTime);  // Prints current date and time
  
  // currentTime = DateTime(2025, 1, 1);  // Error: Can't assign to the final variable 'currentTime'

}
