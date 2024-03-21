import "package:flutter/material.dart";
import "package:frontend/Scores/BasicScore.dart";
import "package:frontend/Scores/midScore.dart";
import "package:frontend/Scores/pushScore.dart";
import "package:frontend/main.dart";

class firstScoreboard extends StatelessWidget {
  const firstScoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Basic();
  }
}

class scoreGraph extends StatefulWidget {
  const scoreGraph({super.key});

  @override
  State<scoreGraph> createState() => _scoreGraphState();
}

class _scoreGraphState extends State<scoreGraph> {
  
  Map<int,double> dict = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dict = {1:1.0,2:3.0,3:5.0,4:7.0,5:9.0};
  }

  @override
  Widget build(BuildContext context) {

    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    double realhgt =  (screenheight-70-90-25)/2;
    return Column(children: [
        Container(width: screenwidth, height: realhgt*0.95,
          child: Container(margin: EdgeInsets.all(10),
            child: Container(color: Colors.blue),)),

        Container(width: screenwidth, height: realhgt*0.3,child: ElevatedButton(onPressed: () async {

            await Navigator.push(context, MaterialPageRoute(builder: ((context) => LastScore()))).then((value) => {setState(() {})});

          },child: Text("학기말 성적 입력",style: TextStyle(fontSize: 30),),
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),),)
      ],);
  }
}





class inputoverlay extends StatefulWidget {
  const inputoverlay({super.key});

  @override
  State<inputoverlay> createState() => _inputoverlayState();
}

class _inputoverlayState extends State<inputoverlay> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenwidth*0.4,
      height: screenheight*0.3,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Theme(
                data: ThemeData(
                    primaryColor: Colors.white,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Color.fromRGBO(130, 173, 252, 1)))),
                child: Container(
                    padding: EdgeInsets.all(40.0),
                    child: Builder(builder: (context) {
                      return Column(
                        children: [
                          TextField(
                            controller: controller,
                            autofocus: true,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  //목표등급 변경
                                  try {
                                    String sc = controller.text;
                                      if(double.parse(sc) >= 1 && double.parse(sc) <= 9) {
                                        sc = double.parse(sc).toStringAsFixed(2);
                                        wantScore = sc;
                                        wantText = "목표등급\n    "+wantScore;
                                        Navigator.pop(context);
                                      }

                                  }
                                  catch(e) {
                                    print(e);
                                    showDialog(context: context,barrierDismissible: false, builder: ((context) {
                                      return AlertDialog(
                                    content: wrongOverlay(),
                                  );
                                  }));
                                    

                                  }
                                  
                                },
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent),
                              ))
                        ],
                      );
                    })),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

String wantScore = "0.00";
String wantText = "목표등급\n    "+wantScore;
String nowScore = "0.00";



class addScore extends StatelessWidget {
  const addScore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    double realhgt = (screenheight-70-90-25)/2;
    return  Container(
      width: screenwidth,
      height: realhgt,

      child: Column(children: [
        Container(height :realhgt*0.45,width: screenwidth,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("현재등급",style: TextStyle(fontSize: 25)),
                  Text(nowScore,style: TextStyle(fontSize: 25))
              
                ],),
                Btnwant(),
            ]
          ),
        ),


        Container(height: realhgt*0.3,width: screenwidth*0.98,
        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => midscore()));}, 
          child: Text("중간고사 계산기",style: TextStyle(fontSize: 30),),
          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          )
          ,)
      
      ]),
    );
  }
}

class Btnwant extends StatefulWidget {
  const Btnwant({super.key});

  @override
  State<Btnwant> createState() => _BtnwantState();
}

class _BtnwantState extends State<Btnwant> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () async {
      await showDialog(context: context,barrierDismissible: true, builder: ((context) {
        return AlertDialog(
          content: inputoverlay(),
        );})).then((value) => {
          setState(() {})
        });
      
    }, child: Text(wantText,style: TextStyle(fontSize: 25),));
  }
}

class Basic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double realwid = screenwidth/6;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          '내신 계산기',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(130, 173, 252, 1),
        elevation: 0.0,
        leading: Container(
          child: Image.asset('img/ohsunggo.png',),
          margin: EdgeInsets.only(left: 30),
        ),
        leadingWidth: 100,
      ),

      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(children: [
          scoreGraph(),
          addScore(),
      ]),
      ),
      bottomNavigationBar: Row(children: [
        Container(
          width: realwid,
          height: 70,
          margin: EdgeInsets.only(left: realwid/6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(onPressed:(){},
            icon: Icon(Icons.alarm),
            iconSize: 40,
            color: Color.fromARGB(60, 244, 67, 54),
          ),
        ),
        Container(
          width: realwid,
          height: 70,
          margin: EdgeInsets.only(left: realwid/6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(onPressed:(){},
            icon: Icon(Icons.bento_outlined),
            iconSize: 40,
            color: Color.fromARGB(60, 53, 233, 221),
          ),
        ),
        Container(
          width: realwid,
          height: 70,
          margin: EdgeInsets.only(left: realwid/6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(onPressed:(){Navigator.pop(context);Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeBoard()));},
            icon: Icon(Icons.note_alt_outlined),
            iconSize: 40,
            color: Color(0xff41D96C),
          ),
        ),
        Container(
          width: realwid,
          height: 70,
          margin: EdgeInsets.only(left: realwid/6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(onPressed:(){Navigator.pop(context);Navigator.push(context, MaterialPageRoute(builder: (context) => firstScoreboard()));},
            icon: Icon(Icons.grade_outlined),
            iconSize: 40,
            color: Color.fromARGB(60, 255, 170, 0),
          ),
        ),
        Container(
          width: realwid,
          height: 70,
          margin: EdgeInsets.only(left: realwid/6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(onPressed:(){},
            icon: Icon(Icons.face),
            iconSize: 40,
            color: Color.fromARGB(60, 0, 132, 255),
          ),
        ),

      ]),


    );
  }
}