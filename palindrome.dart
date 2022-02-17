void main(List<String> arguments) {
  print(palindrome(arguments[0]) ? "YES" : "NO");
}

bool palindrome(String s) {
  return s.split('').reversed.join() == s;
}
