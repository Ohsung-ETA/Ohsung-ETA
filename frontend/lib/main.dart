import 'package:flutter/material.dart';
import 'package:frontend/TempPage.dart';
import 'package:frontend/notices/free.dart';
import 'package:frontend/notices/club.dart';
import 'package:frontend/notices/note.dart';
import 'package:frontend/notices/ask.dart';
import 'package:frontend/notices/graduate.dart';
import 'package:frontend/notices/oneg.dart';
import 'package:frontend/notices/twog.dart';
import 'package:frontend/notices/threeg.dart';
import 'package:frontend/notices/ads.dart';
import 'package:frontend/notices/singo.dart';

import "dart:async";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '오성고에타',
      home: Loading(),
    );
  }
}

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return LoadingScreen();
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(130, 173, 252, 1),
      child: Center(
        child: Container(child: Image.asset("img/ohsunggo.png")),
      ),
    );
  }
}


class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(130, 173, 252, 1),
        centerTitle: true,
      ),
      // email, password 입력하는 부분을 제외한 화면을 탭하면, 키보드 사라지게 GestureDetector 사용 
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Center(
                child: Image(
                  image: AssetImage('img/ohsunggo.png'),
                  width: 100.0,
                ),
              ),
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
                            decoration: InputDecoration(labelText: 'email'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            controller: controller2,
                            decoration:
                                InputDecoration(labelText: 'password'),
                            keyboardType: TextInputType.text,
                            obscureText: true, // 비밀번호 안보이도록 하는 것
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ButtonTheme(
                              minWidth: 100.0,
                              height: 50.0,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (controller.text == 'ETA' &&
                                      controller2.text == '1234') {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                TempP()));
                                  }
                                  else if (controller.text == 'ETA' && controller2.text != '1234') {
                                      showSnackBar(context, Text('비밀번호가 틀렸습니다.'));
                                  }
                                  else {
                                    showSnackBar(context, Text('정보를 확인하세요'));
                                  }
                                },
                                child: Icon(
                                  Icons.arrow_forward,
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

void showSnackBar(BuildContext context, Text text) {
  final snackBar = SnackBar(
    content: text,
    backgroundColor: Color.fromARGB(255, 112, 48, 48),
  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}



class NoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double realwid = screenwidth/6;
    double screenheight = MediaQuery.of(context).size.height;
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
        backgroundColor: Color.fromRGBO(130, 173, 252, 1),
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
                 decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                  height: (screenheight-70-90-25-90-60),
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
                
              ],
            ),
          ),
        ],
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