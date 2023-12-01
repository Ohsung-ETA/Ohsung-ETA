import 'package:flutter/material.dart';

class BasicScore {
  String subName;
  int rank;
  int time;
  BasicScore({required this.subName, required this.rank, required this.time});
}


class wrongOverlay extends StatelessWidget {
  const wrongOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenwidth*0.2,
      height : screenheight*0.12,
      child: Column(children: [
        Text("입력값을 다시한번 확인해주세요.",style: TextStyle(fontSize: 15),),
        Container(height: screenheight*0.01,),
        ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Icon(Icons.check))
      ]),

    );
  }
}