import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/Scores/BasicScore.dart';

class LastScore extends StatelessWidget {
  const LastScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Basic();
  }
}

class Basic extends StatefulWidget {
  const Basic({super.key});

  @override
  State<Basic> createState() => _BasicState();
}


List<List<BasicScore>> BS = [];

class _BasicState extends State<Basic> {

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BS.addAll([[],[],[],[],[],[]]);
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height-150;
    double screenwidth = MediaQuery.of(context).size.width*0.7;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            title: Text(
              '학기말',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(130, 173, 252, 1),
            elevation: 0.0,
            leading: BackButton(onPressed: () {Navigator.pop(context);},),
            leadingWidth: 100,

            bottom: TabBar(tabs: [Text("1학년"),Text("2학년"),Text("3학년")],),
      ),
      
      body: TabBarView(
        children: [
          for(int i = 0;i<3;i++)
            Column(
              children: [
                Text("1학기"),
                Container(height: screenheight/2,width: screenwidth,
                  child: buttonss(sets: () {setState(() {});}, BS: BS[i*2],),
                ),
                Text("2학기"),
                Container(height: screenheight/2,width: screenwidth,
                child: buttonss(sets: () {setState(() {});},BS: BS[i*2+1]),
                ),
              ],
            ),
      ])
      
      ),
      )
      
    );
  }
}

String makeAvg(List<BasicScore> BS) {
  int allCount = 0;
  int allRank = 0;
  for(int i = 0;i<BS.length;i++) {
    allRank += BS[i].rank*BS[i].time;
    allCount += BS[i].time;
  }
  return (allRank/allCount).toStringAsFixed(2);
}

class inputoverlay extends StatefulWidget {
  final int idx;
  List<BasicScore> BS;
  inputoverlay({required this.idx, required this.BS});

  @override
  State<inputoverlay> createState() => _inputoverlayState();
}

class _inputoverlayState extends State<inputoverlay> {
  TextEditingController sub= TextEditingController();
  TextEditingController ranking = TextEditingController();
  TextEditingController counting = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    int idx = widget.idx;
    List<BasicScore> BS = widget.BS;

    if(idx != -1) {
      sub.text = BS[idx].subName;
      counting.text = BS[idx].time.toString();
      ranking.text = BS[idx].rank.toString();
    } 
  }
  
  @override
  Widget build(BuildContext context) {
    int idx = widget.idx;
    List<BasicScore> BS = widget.BS;
    double screenwidth = MediaQuery.of(context).size.width*0.7;
    double screenheight = 300;
    return Container(
    child: 
    Container(
      width: screenwidth,
      height: screenheight,
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
                    //padding: EdgeInsets.all(10.0),
                    child: Builder(builder: (context) {
                      return Column(
                        children: [
                              Container(
                                height: screenheight/3,
                                width: screenwidth*0.65,
                                child:TextField(
                                  controller: sub,
                                  autofocus: true,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(labelText: '과목명'),
                                ), 
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: screenheight/3,
                                width: screenwidth*0.15,
                                child: TextField(
                                  controller: counting,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '시수'),
                                ), 
                              ),
                              Container(
                                height: screenheight/3,
                                width: screenwidth*0.1,
                              ),
                              Container(
                                height: screenheight/3,
                                width: screenwidth*0.15,
                                child: TextField(
                                  controller: ranking,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '등급'),
                                ),
                              ),
                            ],
                          ),
                          ButtonTheme(
                            height: screenheight/3,
                              child: ElevatedButton(
                                onPressed: () {
                                  try {
                                  if(idx != -1) {
                                    BS[idx] =BasicScore(subName: sub.text, rank: int.parse(ranking.text), time: int.parse(counting.text));
                                  }
                                  else {
                                    //context.read<BSList>().add(BasicScore(subName: sub.text, rank: makeGrade(realrank, double.parse(allnum.text)), time: int.parse(counting.text)));
                                    BS.add(BasicScore(subName: sub.text, rank: int.parse(ranking.text), time: int.parse(counting.text)));
                                  }
                                  Navigator.pop(context);

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
    )
     ,);
  }
}


class buttonss extends StatefulWidget {
  Function sets;
  List<BasicScore> BS;
  buttonss({required this.sets, required this.BS});

  @override
  State<buttonss> createState() => _buttonssState();
}

class _buttonssState extends State<buttonss> {

  @override
  Widget build(BuildContext context) {
    List<BasicScore> BS = widget.BS;

    return Column(

      children: [
      Text("평균등급 "+makeAvg(BS),style: TextStyle(fontSize: 20),),
      Container(width: 20,),

      
      Flexible(
        fit: FlexFit.loose,
        child: SingleChildScrollView(
        child: Container(
            child: Column(children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: BS.length,
                itemBuilder: (BuildContext bct, int idx) {
                    return ScoreButton(idx: idx,sets: widget.sets,BS: BS,);
                },
                physics: NeverScrollableScrollPhysics(),
              ),

              IconButton(onPressed: () async {
              await showDialog(context: context,barrierDismissible: true, builder: ((context) {
              return AlertDialog(
                content: inputoverlay(idx: -1,BS: BS),
              );}
              )).then((value) => {
                widget.sets(),
              setState(() {})
              });
              }, icon: Icon(Icons.more_horiz))

            
        ]),
          )
          
        ))

      ],
    );
  }
}


class ScoreButton extends StatefulWidget {
  final int idx;
  Function sets;
  List<BasicScore> BS;
  ScoreButton({required this.idx,required this.sets,required this.BS});

  @override
  State<ScoreButton> createState() => _ScoreButtonState();
}

class _ScoreButtonState extends State<ScoreButton> {
  @override
  
  Widget build(BuildContext context) {
    List<BasicScore> BS = widget.BS;
    int idx = widget.idx;
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Column(children: [

      Container(
        width: screenwidth*0.85, height: 70,
        child: ElevatedButton(onPressed: () async  {
        await showDialog(context: context,barrierDismissible: true, builder: ((context) {
          return AlertDialog(
            content: inputoverlay(idx: idx,BS: BS),
          );})).then((value) => {setState(() {}),widget.sets()});
      },
            child: Text(BS[idx].subName+" "+BS[idx].rank.toString()+"등급",style: TextStyle(fontSize: 30)),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            )
      ),
      Container(height: 15,)
    ],);

  }
}

