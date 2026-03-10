class AtbashCipher {
  String encode(String text) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      if (text.codeUnitAt(i) >= 65 && text.codeUnitAt(i) <= 91) {
        newText += String.fromCharCode(65 + 91 - text.codeUnitAt(i));
      } else if (text.codeUnitAt(i) >= 97 && text.codeUnitAt(i) <= 122) {
        newText += String.fromCharCode(97 + 122 - text.codeUnitAt(i));
      } else {
        newText += text[i];
      }
    }
    return newText.split('').join();
  }
  String decode(String text) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      if (text.codeUnitAt(i) >= 65 && text.codeUnitAt(i) <= 91) {
        newText += String.fromCharCode(65 + 91 - text.codeUnitAt(i));
      } else if (text.codeUnitAt(i) >= 97 && text.codeUnitAt(i) <= 122) {
        newText += String.fromCharCode(97 + 122 - text.codeUnitAt(i));
      } else {
        newText += text[i];
      }
    }
    return newText.split('').join();
  }
}

void main(List<String> args) {
  print(AtbashCipher().encode("OMG"));
}
