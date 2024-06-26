import 'package:flutter/material.dart';
import 'package:frontend/Scores/BasicScore.dart';

class midscore extends StatelessWidget {

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

List<BasicScore> BS = [];

class _BasicState extends State<Basic> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          '중간고사',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(130, 173, 252, 1),
        elevation: 0.0,
        leading: BackButton(),
        leadingWidth: 100,
      ),

      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("평균등급 "+makeAvg(),style: TextStyle(fontSize: 20),),
            Container(width: 20,),
          ],
        ),
       
        buttonss(sets: () {setState(() {});},),
      ],)
      
    );
  }
}

class buttonss extends StatefulWidget {
  Function sets;
  buttonss({required this.sets});

  @override
  State<buttonss> createState() => _buttonssState();
}

class _buttonssState extends State<buttonss> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: SingleChildScrollView(
      child: Container(
          child: Column(children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: BS.length,
              itemBuilder: (BuildContext bct, int idx) {
                  return ScoreButton(idx: idx,sets: widget.sets);
              },
              physics: NeverScrollableScrollPhysics(),
            ),

            IconButton(onPressed: () async {
            await showDialog(context: context,barrierDismissible: true, builder: ((context) {
            return AlertDialog(
              content: inputoverlay(idx: -1),
            );}
            )).then((value) => {
              widget.sets(),
            setState(() {})
            });
            }, icon: Icon(Icons.more_horiz))

          
      ]),
        )
        
      ));
  }
}


class ScoreButton extends StatefulWidget {
  final int idx;
  Function sets;
  ScoreButton({required this.idx,required this.sets});

  @override
  State<ScoreButton> createState() => _ScoreButtonState();
}

class _ScoreButtonState extends State<ScoreButton> {
  @override
  
  Widget build(BuildContext context) {
    int idx = widget.idx;
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Column(children: [

      Container(
        width: screenwidth*0.85, height: 70,
        child: ElevatedButton(onPressed: () async {
        await showDialog(context: context,barrierDismissible: true, builder: ((context) {
          return AlertDialog(
            content: inputoverlay(idx: idx),
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



class inputoverlay extends StatefulWidget {
  final int idx;
  const inputoverlay({super.key,required this.idx});

  @override
  State<inputoverlay> createState() => _inputoverlayState();
}

class _inputoverlayState extends State<inputoverlay> {
  TextEditingController sub= TextEditingController();
  TextEditingController ranking = TextEditingController();
  TextEditingController counting = TextEditingController();
  TextEditingController samenum = TextEditingController();
  TextEditingController allnum = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    int idx = widget.idx;

    if(idx != -1) {
      sub.text = BS[idx].subName;
      counting.text = BS[idx].time.toString();
    } 
  }
  @override
  Widget build(BuildContext context) {
    int idx = widget.idx;
    double screenwidth = MediaQuery.of(context).size.width*0.7;
    return Container(
      width: screenwidth,
      height: 270,
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
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: screenwidth*0.65,
                                child:TextField(
                                  controller: sub,
                                  autofocus: true,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(labelText: '과목명'),
                                ), 
                              ),

                              Container(
                                height: 100,
                                width: screenwidth*0.15,
                              ),

                              Container(
                                height: 100,
                                width: screenwidth*0.15,
                                child: TextField(
                                  controller: counting,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '시수'),
                                ), 
                              )
                          
                         
                            ],
                          ),

                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: screenwidth*0.15,
                                child: TextField(
                                  controller: ranking,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '석차'),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: screenwidth*0.1,
                              ),

                              Container(
                                height: 100,
                                width: screenwidth*0.3,
                                child: TextField(
                                  controller: samenum,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '동석차수'),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: screenwidth*0.1,
                              ),


                              Container(
                                height: 100,
                                width: screenwidth*0.3,
                                child: TextField(
                                  controller: allnum,
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: '수강자수'),
                                ),
                              )
                            ],
                          ),
                          ButtonTheme(
                            height: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  try {if(int.parse(allnum.text) >= int.parse(ranking.text)
                                  && int.parse(samenum.text) >= 1 && int.parse(allnum.text)*int.parse(ranking.text)*int.parse(counting.text) > 0
                                  && sub.text != "") {
                                    double realrank = double.parse(samenum.text)+double.parse(ranking.text)-1;
                                    if(idx != -1) {
                                      BS[idx].subName = sub.text;
                                      BS[idx].rank = makeGrade(realrank, double.parse(allnum.text));
                                      BS[idx].time = int.parse(counting.text);
                                    }
                                    else {
                                      BS.add(BasicScore(subName: sub.text, rank: makeGrade(realrank, double.parse(allnum.text)), time: int.parse(counting.text)));
                                    }
                                    Navigator.pop(context);
                                  }

                                  }catch(e) {
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


int makeGrade(double rank, double all) {
  if((all/100*4).roundToDouble() >= rank) return 1;
  if((all/100*11).roundToDouble() >= rank) return 2;
  if((all/100*23).roundToDouble() >= rank) return 3;
  if((all/100*40).roundToDouble() >= rank) return 4;
  if((all/100*60).roundToDouble() >= rank) return 5;
  if((all/100*77).roundToDouble() >= rank) return 6;
  if((all/100*89).roundToDouble() >= rank) return 7;
  if((all/100*96).roundToDouble() >= rank) return 8;
  else return 9;
}


String makeAvg() {
  int allCount = 0;
  int allRank = 0;
  for(int i = 0;i<BS.length;i++) {
    allRank += BS[i].rank*BS[i].time;
    allCount += BS[i].time;
  }
  return (allRank/allCount).toStringAsFixed(2);
}