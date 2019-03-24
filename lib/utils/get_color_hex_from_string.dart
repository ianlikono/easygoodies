class GetColorHexFromString {
  final color;
  GetColorHexFromString({this.color});

  int getColorHexFromStr(String color) {
    color = "FF" + color;
    color = color.replaceAll("#", "");
    int val = 0;
    int len = color.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = color.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
}
