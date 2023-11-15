import 'package:flutter/material.dart';
import 'package:noticeboard/notices/free.dart';
import 'package:noticeboard/notices/club.dart';
import 'package:noticeboard/notices/note.dart';
import 'package:noticeboard/notices/ask.dart';
import 'package:noticeboard/notices/graduate.dart';
import 'package:noticeboard/notices/oneg.dart';
import 'package:noticeboard/notices/twog.dart';
import 'package:noticeboard/notices/threeg.dart';
import 'package:noticeboard/notices/ads.dart';
import 'package:noticeboard/notices/singo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '오성고에타',
      home: NoticeBoard(),
    );
  }
}

class NoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          '게시판',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 130, 173, 252),
        elevation: 0.0,
        leading: Container(
          child: Image.asset('img/ohsunggo.png',),
          margin: EdgeInsets.only(left: 30),
        ),
        leadingWidth: 100,
      ),

      body: Column(
        children: [
          Container(
            color: Color(0xffDCE8FF),
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
             children: <Widget>[
               //자유게시판
               Container(
                  width: 90,
                 margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                 color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => freeboard(),
                      )
                    );
                  }, child: Text(
                    '자유',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //동아리
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => clubboard(),
                      )
                    );
                  }, child: Text(
                    '동아리',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //공지
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => noteboard(),
                      )
                    );
                  }, child: Text(
                    '공지',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //질문
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => askboard(),
                      )
                    );
                  }, child: Text(
                    '질문',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //졸업생
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => graduateboard(),
                      )
                    );
                  }, child: Text(
                    '졸업생',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //1학년
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => onegboard(),
                      )
                    );
                  }, child: Text(
                    '1학년',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //2학년
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => twogboard(),
                      )
                    );
                  }, child: Text(
                    '2학년',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //3학년
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => threegboard(),
                      )
                    );
                  }, child: Text(
                    '3학년',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //홍보
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => adsboard(),
                      )
                    );
                  }, child: Text(
                    '홍보',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
                //피드백
                Container(
                  width: 90,
                  margin: EdgeInsets.fromLTRB(0, 10, 15, 10),
                  color: Colors.white,
                  child: TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => singoboard(),
                      )
                    );
                  }, child: Text(
                    '피드백',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 60,
            margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Text(
                    '인기글',
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  margin: EdgeInsets.only(top: 5),
                  child: Image.asset('img/fire.png'),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            height: 3,
            color: Color(0xffA0C1FF),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 380,
                  height: 450,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                      Container(
                        width: 380,
                        height: 90,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(60, 0, 0, 0), width: 1),
                          color: Color(0xffEFEFEF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(onPressed: (){
                          //해당게시물로 가기
                          print('hello');
                        }, child: Text('')),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  color: Color.fromARGB(255, 130, 173, 252),
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 13.5),
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
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 13.5),
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
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 13.5),
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
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 13.5),
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
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(left: 13.5),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}