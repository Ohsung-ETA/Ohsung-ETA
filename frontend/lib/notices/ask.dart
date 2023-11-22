import 'package:flutter/material.dart';
import 'package:frontend/search.dart';
import 'package:frontend/write.dart';

class askboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '질문게시판',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22
          ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back, color: Colors.black,size: 30,),
        ),
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => searching(),
              )
            );
          }, icon: Icon(Icons.search,color: Colors.black, size: 30,)),
          SizedBox(width: 20,)
        ],
        elevation: 0.0,
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned(
            left: 17,
            child: Container(
              width: 400,
              height: 4,
              color: Color.fromARGB(255, 130, 173, 252),
            ),
          ),
          Positioned(
            top: 5,
            left: 0,
            right: 0,
            child: Container(
              width: 400,
              height: 700,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 380,
                    height: 90,
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
          ),
          Positioned(
            top: 650,
            left: 350,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 130, 173, 252),
                borderRadius: BorderRadius.circular(40)
              ),
              child: IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => writeboard(),
                  )
                );
                }, icon: Icon(Icons.note_alt_outlined,size: 50,color: Colors.white,)
              ),
            ),
          )
        ],
      ),
    );
  }
}
