import 'dart:io';

void main() {
  // Asking user for input
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose operation: ");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  // Perform the operation based on user's choice
  switch (choice) {
    case 1:
      result = add(num1, num2);
      break;
    case 2:
      result = subtract(num1, num2);
      break;
    case 3:
      result = multiply(num1, num2);
      break;
    case 4:
      result = divide(num1, num2);
      break;
    default:
      print("Invalid choice.");
      return; // Exit the program if invalid choice is made
  }

  // Print the result
  print("The result is: $result");
}

// Addition function
double add(double a, double b) {
  return a + b;
}

// Subtraction function
double subtract(double a, double b) {
  return a - b;
}

// Multiplication function
double multiply(double a, double b) {
  return a * b;
}

// Division function
double divide(double a, double b) {
  if (b == 0) {
    print("Error! Division by zero.");
    return 0; // Returning 0 as a fallback value
  }
  return a / b;
}
