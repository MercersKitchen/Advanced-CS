import java.util.Scanner;
//cd F:\My Documents\GitHub\ChatBot
public class ChatBot{
  public static void main(String[] args){
    Scanner input = new Scanner ( System.in );

    System.out.println("You joined ChatBots chat room.");
    System.out.println("Try saying Hello.");

    while(1==1){
    String Strin = input.nextLine();
    StringAlg.Split(Strin);
    StringAlg.Responses();
     }
   }
  }
