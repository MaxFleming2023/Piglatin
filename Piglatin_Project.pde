public void setup() {
  String[] words = // where was the list??
  System.out.println("there are " + words.length + " lines");
  for (int i = 0; i < words.length; i++) {
    System.out.println(pigLatin(words[i]));
  }
}

public int firstVowel(String sWord) {
  int index = -1;
  for (int i=0; i<sWord.length(); i++) {
    String letter = sWord.substring(i, i+1);
    if (letter.contains("o")||letter.contains("e")||letter.contains("a")||letter.contains("i")||letter.contains("u")) {
      index=i;
      break;
    }
  }
  return index;
}

public String pigLatin(String sWord) {
  if (sWord.length()<=0) {
    return "ERROR!";
  }
  if (firstVowel(sWord) == -1) {
    return sWord + "ay";
  } else if (firstVowel(sWord) == 0) {
    return sWord + "way";
  } else if (sWord.substring(0, 2).equals( "qu")) {
    return sWord.substring(2) +"quay";
  } else {
    return sWord.substring(firstVowel(sWord)) +sWord.substring(0, firstVowel(sWord)) + "ay";
  }
}
