class Calc {
  static String output = "";
  static String calculation, sign;
  static int first, second;

  static result(String keyName, String output) {
    if (keyName == "C") {
      calculation = "";
      output = "";
      first = 0;
      second = 0;
      sign = "";
    } else if (keyName == "+" ||
        keyName == "*" ||
        keyName == "-" ||
        keyName == "/") {
      first = int.parse(output);
      calculation = "";
      sign = keyName;
    } else if (keyName == "=") {
      second = int.parse(output);

      if (sign == "+") {
        calculation = (first + second).toString();
      }

      if (sign == "-") {
        calculation = (first - second).toString();
      }

      if (sign == "*") {
        calculation = (first * second).toString();
      }

      if (sign == "/") {
        calculation = (first / second).toString();
      }
    } else {
      calculation = int.parse(output + keyName).toString();
    }

    return calculation;
  }
}