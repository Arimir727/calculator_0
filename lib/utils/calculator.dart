import 'package:math_expressions/math_expressions.dart';

// Function to evaluate mathematical expressions
double evaluateExpression(String expression) {
  // Replace 'x' with '*' for multiplication
  String finalInput = expression.replaceAll('x', '*');
  Parser p = Parser();
  Expression exp = p.parse(finalInput); // Parse the expression
  ContextModel cm = ContextModel(); // Create a context model
  return exp.evaluate(
      EvaluationType.REAL, cm); // Evaluate the expression and return the result
}
