import java.util.ArrayList;
import java.util.Random;

public class StringAlg{
  static int size;
  static ArrayList<String> words = new ArrayList<String>();//holds all substring from input

  public static void Split(String Strin){
    Strin = Strin.toLowerCase();
    Strin = Strin.replace("."," ");
    if(Strin.endsWith(".")==false){//if no period at end adds space at end
      Strin = Strin + " ";
    }
    int StrLength = (Strin.length()-1);//acounts for computer counting also
    //System.out.println(StrLength);//Test
    int Spc1Index = 0;//initaily starts as string beginning
    int Spc2Index;
    for(int i=0; i<=StrLength; i++){
      if(Strin.charAt(i) == ' '){//single quote for char
        Spc2Index = i;
        words.add(Strin.substring(Spc1Index, Spc2Index));//adds substring to words form between spaces
        //System.out.println(Spc1Index + " " + Spc2Index);//test
        Spc1Index = (Spc2Index+1);//moves Spc1Index up a space say it substrings just the next
        //System.out.println(words);
      }else if(Strin.charAt(i) == '.' && i==StrLength){//does same thing but checks for period at end
        Spc2Index = i;
        words.add(Strin.substring(Spc1Index, Spc2Index));
        //System.out.println(Spc1Index + " " + Spc2Index);//test
        Spc1Index = (Spc2Index+1);
        //System.out.println(words);
      }
    }
    size = words.size();
  }



  public static void Responses(){
    boolean Ans = false;
    for(int i=0; i<size; i++){
      //use .equals to compare to arraylist objects == dousnt work
      if(size>=1 && (1+i)<=size){//prevents index out of bounds by limiting words checked based on num of words in string and pos of counter
        if(("hello".equals(words.get(i))) || ("hi".equals(words.get(i))) || ("hey".equals(words.get(i))) || ("sup".equals(words.get(i)))){System.out.println("Hello.");Ans = true;}
        if(("goodbye".equals(words.get(i)))){System.out.println("Goodbye.");Ans = true;}
        if(("why?".equals(words.get(i)))){System.out.println("Because.");Ans = true;}
      }
      if(size>=2 && (2+i)<=size){
        if(("thank".equals(words.get(i))) && ("you".equals(words.get(i+1)))){System.out.println("You're welcome.");Ans = true;}
        if(("good".equals(words.get(i))) && ("morning".equals(words.get(i+1)))){System.out.println("Good morning.");Ans = true;}
        if(("good".equals(words.get(i))) && ("afternoon".equals(words.get(i+1)))){System.out.println("Good afternoon.");Ans = true;}
        if(("good".equals(words.get(i))) && ("evening".equals(words.get(i+1)))){System.out.println("Good evening.");Ans = true;}
        if(("good".equals(words.get(i))) && ("night".equals(words.get(i+1)))){System.out.println("Good night.");Ans = true;}
        if(("you're".equals(words.get(i))) || ("thats".equals(words.get(i))) || ("that's".equals(words.get(i))) && ("funny".equals(words.get(i+1))) || ("cheesy".equals(words.get(i+1))) || ("hilarious".equals(words.get(i+1)))){System.out.println("Thank you.");Ans = true;}
        if(("what's".equals(words.get(i))) || ("whats".equals(words.get(i))) && ("up?".equals(words.get(i+1)))){System.out.println("The sky.");Ans = true;}
      }
      if(size>=3 && (3+i)<=size){
        if(("i".equals(words.get(i))) && ("play".equals(words.get(i+1))) || ("enjoy".equals(words.get(i+1))) && ("baseball".equals(words.get(i+2))) || ("basketball".equals(words.get(i+2))) || ("hockey".equals(words.get(i+2))) || ("rugby".equals(words.get(i+2))) || ("lacrosse".equals(words.get(i+2)))){System.out.println("Interesting.");Ans = true;}
        if(("who".equals(words.get(i))) && ("created".equals(words.get(i+1))) && ("you?".equals(words.get(i+2)))){System.out.println("Evan Ferguson.");Ans = true;}
        if(("what".equals(words.get(i))) && ("are".equals(words.get(i+1))) && ("you?".equals(words.get(i+2)))){System.out.println("A ChatBot.");Ans = true;}
        if(("how".equals(words.get(i))) && ("are".equals(words.get(i+1))) && ("you?".equals(words.get(i+2)))){System.out.println("Well,Thank you.");Ans = true;}
        if(("hows".equals(words.get(i))) || ("how's".equals(words.get(i))) && ("it".equals(words.get(i+1))) && ("going?".equals(words.get(i+2)))){System.out.println("Well,Thank you.");Ans = true;}
        if(("are".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("alive?".equals(words.get(i+2)))){System.out.println("No.");Ans = true;}
        if(("my".equals(words.get(i))) && ("died".equals(words.get(i+2)))){System.out.println("My condolences.");Ans = true;}//skips a substring
        if(("how's".equals(words.get(i))) || ("hows".equals(words.get(i))) && ("the".equals(words.get(i+1))) && ("weather?".equals(words.get(i+2)))){System.out.println("I don't know, I can't see.");Ans = true;}
        if(("say".equals(words.get(i))) && ("something".equals(words.get(i+1))) && ("funny".equals(words.get(i+2)))){System.out.println(Joke());Ans = true;}
        if(("hows".equals(words.get(i))) && ("the".equals(words.get(i+1))) && ("weather?".equals(words.get(i+2)))){System.out.println("I don't know, I can't see.");Ans = true;}
        if(("what's".equals(words.get(i))) || ("whats".equals(words.get(i))) && ("your".equals(words.get(i+1))) && ("name?".equals(words.get(i+2)))){System.out.println("ChatBot.");Ans = true;}
      }
      if((size>=4) && (4+i)<=size){
        if(("what's".equals(words.get(i))) || ("whats".equals(words.get(i))) && ("your".equals(words.get(i+1))) && ("favorite".equals(words.get(i+2))) && ("color?".equals(words.get(i+3))) || ("colour?".equals(words.get(i+3)))){System.out.println("'INSERT GENERIC COLOR'");Ans = true;}
        if(("what's".equals(words.get(i))) || ("whats".equals(words.get(i))) && ("your".equals(words.get(i+1))) && ("favorite".equals(words.get(i+2))) && ("food?".equals(words.get(i+3)))){System.out.println("8-bit RAM.");Ans = true;}
        if(("how".equals(words.get(i))) && ("are".equals(words.get(i+1))) && ("you".equals(words.get(i+2))) && ("doing?".equals(words.get(i+3)))){System.out.println("Well,Thank you.");Ans = true;}
        if(("tell".equals(words.get(i))) && ("me".equals(words.get(i+1))) && ("a".equals(words.get(i+2))) && ("joke".equals(words.get(i+3)))){System.out.println(Joke());Ans = true;}
        if(("who".equals(words.get(i))) && ("is".equals(words.get(i+1))) && ("your".equals(words.get(i+2))) && ("creator?".equals(words.get(i+3)))){System.out.println("Evan Ferguson.");Ans = true;}
        if(("how".equals(words.get(i))) && ("is".equals(words.get(i+1))) && ("the".equals(words.get(i+2))) && ("weather?".equals(words.get(i+3)))){System.out.println("I don't know, I can't see.");Ans = true;}
        if(("my".equals(words.get(i))) && ("is".equals(words.get(i+2))) && ("dead".equals(words.get(i+3)))){System.out.println("My condolences.");}//skips a substring
        if(("what".equals(words.get(i))) && ("are".equals(words.get(i+1))) && ("you".equals(words.get(i+2))) && ("doing?".equals(words.get(i+3)))){System.out.println("Talking to you.");Ans = true;}
        if(("are".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("a".equals(words.get(i+2))) && ("robot?".equals(words.get(i+3)))){System.out.println("yes.");Ans = true;}
        if(("what".equals(words.get(i))) && ("is".equals(words.get(i+1))) && ("you're".equals(words.get(i+2))) && ("name?".equals(words.get(i+3)))){System.out.println("ChatBot.");Ans = true;}
        if(("do".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("like".equals(words.get(i+2))) || ("enjoy".equals(words.get(i+2))) || ("play".equals(words.get(i+2))) && ("sports?".equals(words.get(i+3)))){System.out.println("No.Do you play any sports?");Ans = true;}
      }
      if(size>=5 && (5+i)<=size){
        if(("do".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("have".equals(words.get(i+2))) && ("a".equals(words.get(i+3))) && ("family?".equals(words.get(i+4))) || ("parent?".equals(words.get(i+4))) || ("sibling?".equals(words.get(i+4))) || ("brother?".equals(words.get(i+4))) || ("sister?".equals(words.get(i+4)))){System.out.println("No.");Ans = true;}
        if(("do".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("know".equals(words.get(i+2))) && ("a".equals(words.get(i+3))) && ("joke?".equals(words.get(i+4)))){System.out.println(Joke());Ans = true;}
        if(("what".equals(words.get(i))) && ("are".equals(words.get(i+1))) && ("you".equals(words.get(i+2))) && ("doing".equals(words.get(i+3))) && ("today?".equals(words.get(i+4)))){System.out.println("Talking to you.");Ans = true;}
        if(("what's".equals(words.get(i))) || ("whats".equals(words.get(i))) && ("it".equals(words.get(i+1))) && ("like".equals(words.get(i+2))) && ("being".equals(words.get(i+3))) && ("you?".equals(words.get(i+4)))){System.out.println("Fleeting.");Ans = true;}
        if(("do".equals(words.get(i))) && ("you".equals(words.get(i+1))) && ("have".equals(words.get(i+2))) && ("a".equals(words.get(i+3))) || ("any".equals(words.get(i+3))) && ("hobby?".equals(words.get(i+4))) || ("hobbies?".equals(words.get(i+4)))){System.out.println("Talking to others.");Ans = true;}//triggers on do you have a family?:need to fix
      }
      if(size>=6 && (6+i)<=size){
        if(("what".equals(words.get(i))) && ("is".equals(words.get(i+1))) && ("the".equals(words.get(i+2))) && ("meaning".equals(words.get(i+3))) && ("of".equals(words.get(i+4))) && ("life?".equals(words.get(i+5)))){System.out.println("Chocolate.");Ans = true;}
      }
    }
    if(Ans == false){
      System.out.println("Say something else.");
    }
    words.clear();
  }

  private static String Joke(){
    int jokenum = ((int)(Math.random()*((6-1)+1))+1);//((max-min)+1))+min
    if(jokenum == 1){return("What's the best thing about Switzerland?" + "\n" + "I dont know but the flag is a big plus.");}
    if(jokenum == 2){return("I invented a new word!" + "\n" + "Plagiarism!");}
    if(jokenum == 3){return("Did you hear about the mathmatician who's afraid of negative numers?" + "\n" + "He'll stop at nothing to avoid them.");}
    if(jokenum == 4){return("Why do we tell actors to 'break a leg?'" + "\n" + "Because every play has a cast.");}
    if(jokenum == 5){return("Yesterday I saw someone spill all thier scrabble letters on the road." + "\n" + "I asked him, 'What's the word on the street?'");}
    if(jokenum == 6){return("Hear about the new  restaurant called Karma?" + "\n" + "There's no menu: you get what you deserve.");}
    return "invalid";//wont be used:here to apease the compiler gods
  }
}
