import 'package:flutter/material.dart';

class clubboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '동아리게시판',
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
            //검색창
          }, icon: Icon(Icons.search,color: Colors.black, size: 30,)),
          SizedBox(width: 20,)
        ],
        elevation: 0.0,
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 4,
            color: Color.fromARGB(255, 130, 173, 252),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
