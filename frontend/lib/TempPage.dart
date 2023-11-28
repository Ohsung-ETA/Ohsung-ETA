import "package:flutter/material.dart";
import "package:frontend/main.dart";
import "package:frontend/score.dart";



class TempP extends StatelessWidget {
  const TempP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(130, 173, 252, 1),
      child: Row(
        children: [
          TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => NoticeBoard()));}, child: Text("게시판",style: TextStyle(fontSize: 20),)),
          TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => firstScoreboard()));}, child: Text("성적",style: TextStyle(fontSize: 20),)),
        ],
      ),
    );
  }
}
