import 'package:tuple/tuple.dart';
class ChatControl{
  Tuple2 chatList(index){
    List<Tuple2<double,String>> chats = [
      Tuple2(1.0,"How have you been?"),
      Tuple2(0.0,"Fine"),
      Tuple2(0.0,"How are you?"),
      Tuple2(1.0,"Life's going.."),
      Tuple2(0.0,"I am eagerly waiting to meet my wife and my newly born daughter."),
      Tuple2(0.0,"Now as you are here, cmon give me some good news. Life's hard in this tiny cell"),
      Tuple2(1.0,"Yeah about that..."),
      Tuple2(0.0,"What about that?"),
      Tuple2(1.0,"There's a good news for you..."),
      Tuple2(0.0,"What's the news?"),
      Tuple2(1.0,"Your wife wrote a letter to you and also sent the photo of your newly born daughter."),
      Tuple2(0.0,"Wow that's a great news, show me the letter and i want to see my daughter too."),
      Tuple2(1.0,"Yeah but on one condition only."),
      Tuple2(0.0,"What condition?"),
      Tuple2(1.0,"You will read the letter when you are alone inside your cell"),
      Tuple2(0.0,"Yeah i will do it, just give me the letter."),
      Tuple2(1.0,"Here you go, this is the envelope that contains both the letter and the photo inside it."),
      Tuple2(1.0,"The time's up will meet you soon"),
      Tuple2(999.0,"The criminal inside his cell alone......"),
      Tuple2(999.0,"Cipher text"),
      Tuple2(0.0,"What is this code trying to say....."),
      Tuple2(999.0,"Try and crack the code")
    ];
    return chats[index];
  }
}