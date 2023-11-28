import 'package:flutter/material.dart';
import 'package:frontend/Scores/BasicScore.dart';

class LastScore extends StatelessWidget {
  final int grade;
  const LastScore({super.key,required this.grade});

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          '학기말',
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
            ElevatedButton(onPressed: () {
              //서버에 저장
            }, child: Text("저장",style: TextStyle(fontSize: 20),))
          ],
        ),
       
        buttonss(),
      ],)
      
    );
  }
}

class buttonss extends StatefulWidget {
  const buttonss({super.key});

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
                return ScoreButton(idx: idx);
              },
              physics: NeverScrollableScrollPhysics(),
            ),

            IconButton(onPressed: () async {
            await showDialog(context: context,barrierDismissible: true, builder: ((context) {
            return AlertDialog(
              content: inputoverlay(idx: -1),
            );}));
            setState(() {print("setState");});
            }, icon: Icon(Icons.more_horiz))

          
      ]),
        )
        
      ));
  }
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

class ScoreButton extends StatefulWidget {
  final int idx;
  const ScoreButton({super.key,required this.idx});

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
        width: screenwidth*0.8, height: screenheight*0.1,
        child: ElevatedButton(onPressed: () async {
        await showDialog(context: context,barrierDismissible: true, builder: ((context) {
          return AlertDialog(
            content: inputoverlay(idx: idx),
          );}));
        setState(() {});
      },
            child: Text(BS[idx].subName+BS[idx].rank.toString(),style: TextStyle(fontSize: 30),),
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
  
  @override
  Widget build(BuildContext context) {
    int idx = widget.idx;
    double screenwidth = MediaQuery.of(context).size.width*0.7;
    double screenheight = MediaQuery.of(context).size.height*0.6;
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
                                  if(idx != -1) {
                                    BS[idx] =BasicScore(subName: sub.text, rank: int.parse(ranking.text), time: int.parse(counting.text));
                                  }
                                  else {
                                    //context.read<BSList>().add(BasicScore(subName: sub.text, rank: makeGrade(realrank, double.parse(allnum.text)), time: int.parse(counting.text)));
                                    BS.add(BasicScore(subName: sub.text, rank: int.parse(ranking.text), time: int.parse(counting.text)));
                                  }
                                  Navigator.pop(context);
                                  
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