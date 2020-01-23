public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String two = onlyLetters(noSpaces(word.toLowerCase()));
  return two.equals(reverse(two));
}
public String reverse(String str)
{
  String res = "";
  for(int i = str.length()-1; i>= 0; i--)
  {
    res += str.charAt(i);
  }
  return res;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
String res = new String();
char t;
for(int i = 0; i<sWord.length(); i++){
  t=sWord.charAt(i);
  if(!Character.isWhitespace(t)){
    res +=t;
  }
}
return res;
}

public String onlyLetters(String sString){
  String letters = "";
  for(int i=0;i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i))){
      letters+=sString.charAt(i);
    }
  }return letters;
}



