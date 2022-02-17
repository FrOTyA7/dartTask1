void main(List<String> arguments) {
  print(factorial(int.parse(arguments[0])));
}

int factorial(int n) {
  if (n == 1) return 1;
  return n * factorial(--n);
}
