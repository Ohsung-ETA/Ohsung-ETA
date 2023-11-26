import "package:flutter/material.dart";

class firstScoreboard extends StatelessWidget {
  const firstScoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Basic();
  }
}


class scoreGraph extends StatelessWidget {
  const scoreGraph({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Container(
       color: Colors.red,
       width: screenwidth,
      height: (screenheight-70-90-25)/2,
    );
  }
}

class addScore extends StatelessWidget {
  const addScore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenwidth,
      height: (screenheight-70-90-25)/2,
      color: Colors.blue,
    );
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
          '성적',
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

      body: Column(children: [
        scoreGraph(),
        addScore(),
      ]),

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
          child: IconButton(onPressed:(){},
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
          child: IconButton(onPressed:(){},
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