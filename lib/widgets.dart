import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CusTextFormFeild extends StatelessWidget {
  String? hintText;
  Function(String)? onChanged ;
  bool? obscureText;


  CusTextFormFeild({this.hintText, this.onChanged, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText:obscureText! ,
        validator: (data){
          if(data!.isEmpty)
            return 'field required' ;
        },
        onChanged: onChanged,

        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CusBotton extends StatelessWidget {
  CusBotton({this.txt , this.onTap});

  String? txt;
  VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          width: double.infinity,
          height: 60,
          child: Center(
            child: Text(txt!),
          ),
        ),
      ),
    );
  }
}
class ChatBuble extends StatelessWidget {
   ChatBuble({
   required this.message
  });
 final Message message ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 15 ,top: 16 , bottom: 16,right: 16),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          color: kPrimaryColor,
        ),
        child:  Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
class ChatBubleForFriend extends StatelessWidget {
  ChatBubleForFriend({
    required this.message
  });
  final Message message ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 15 ,top: 16 , bottom: 16,right: 16),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          color: Colors.lightBlueAccent,
        ),
        child:  Text(
          message.message,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

