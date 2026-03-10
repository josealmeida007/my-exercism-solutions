int convert(String char) {
   Map<String, int> rules = {
    "AEIOULNRST" : 1,
    "DG" : 2,
    "BCMP" : 3,
    "FHVWY" : 4,
    "K" : 5,
    "JX" : 8,
    "QZ" : 10
  };
  
  for (int i = 0; i < rules.length; i++) {
    if (rules.keys.elementAt(i).contains(char.toUpperCase())) {
      return rules[rules.keys.elementAt(i)]!;
    }
  }

  throw ArgumentError('Invalid character: $char');
}

int score(String word) {
  int points = 0;

  for (int i = 0; i < word.length; i++) {
    points += convert(word[i]); 
  }

  return points;
}
