class AtbashCipher {
  String encode(String text) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      newText += String.fromCharCode(97 + 122 - text.codeUnitAt(i));
    }
    return newText;
  }

  String decode(String text) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      newText += String.fromCharCode(97 + 122 - text.codeUnitAt(i));
    }
    return newText;
  }
}
