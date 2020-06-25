import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:google_fonts/google_fonts.dart';
import 'StoryLines.dart';

void main() => runApp(CryptoLand());

class CryptoLand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CryptoHome(),
    );
  }
}

class CryptoHome extends StatefulWidget {
  @override
  _CryptoHomeState createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {
  var visible_1 = 0.0, visible_2 = 1.0,visible_3=0.0;
  var character1_visibility=1.0, character2_visibility=1.0;
  int chatNum=0;
  var chatControl = new ChatControl();

  @override
  Widget build(BuildContext context) {
    var bubble_color = Color.fromRGBO(255, 255, 255, 75);

    var bubble1 = Bubble(
      alignment: Alignment.topCenter,
      nipWidth: 30,
      nipHeight: 10,
      radius: Radius.circular(20.0),
      nip: BubbleNip.leftBottom,
      color: bubble_color,
      child: Text(
        chatControl.chatList(chatNum).item2,
        style: GoogleFonts.sofadiOne(),
      ),
    );

    var bubble2 = Bubble(
      alignment: Alignment.center,
      nipWidth: 30,
      nipHeight: 10,
      radius: Radius.circular(20.0),
      nip: BubbleNip.rightBottom,
      color: bubble_color,
      child: Text(
        chatControl.chatList(chatNum).item2,
        style: GoogleFonts.sofadiOne(),
      ),
    );

    var bubble3 = Bubble(
      alignment: Alignment.center,
      color: bubble_color,
      child: Text(
        chatControl.chatList(chatNum).item2,
        style: GoogleFonts.salsa(fontSize: 22),
      ),
    );

    var max_height = MediaQuery.of(context).size.height;
    var max_width = MediaQuery.of(context).size.width;
    var prisoner = Image.asset(
      "images/prisoner.png",
      height: max_height / 1.3,
      width: max_width,
      alignment: Alignment.centerLeft,
    );
    var visitor = Image.asset("images/visitor.png",
        height: max_height / 1.2, width: max_width / 1.5);

    return Scaffold(
        body: SafeArea(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    chatNum++;
                    visible_2 = (chatControl.chatList(chatNum).item1);
                    visible_1 = (visible_2==1.0 ? 0.0 : 1.0);
                    if(visible_2==999.0){
                      visible_3=1.0;
                      visible_1=0.0;
                      visible_2=0.0;
                      character1_visibility=0.0;
                      character2_visibility=0.0;
                    }
                    else{
                      visible_3=0.0;
                      character1_visibility=1.0;
                      character2_visibility=1.0;
                    }
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "images/prisonbg.jfif",
                      height: max_height,
                      width: max_width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: AnimatedOpacity(
                        child: prisoner,
                        opacity: character1_visibility,
                        duration: Duration(milliseconds: 500),
                      ),
                    ),
                    Image.asset("images/prison.png",
                        height: max_height, width: max_width, fit: BoxFit.fill),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        AnimatedOpacity(
                          child: bubble1,
                          opacity: visible_1,
                          duration: Duration(milliseconds: 0),
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        AnimatedOpacity(
                          child: bubble2,
                          opacity: visible_2,
                          duration: Duration(milliseconds: 0),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: AnimatedOpacity(
                            child: visitor,
                            opacity: character2_visibility,
                            duration: Duration(milliseconds: 500),
                          ),
                        )
                      ],
                    ),
                    AnimatedOpacity(
                      child: bubble3,
                      opacity: visible_3,
                      duration: Duration(milliseconds: 0),
                    ),
                  ],
                )
            )
        )
    );
  }
}