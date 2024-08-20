// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
class Home extends StatefulWidget{
@override
  Parrot createState() => Parrot();
}
class Parrot extends State <Home>{
  @override
Widget build(BuildContext context){
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
body: Padding(
  padding: EdgeInsets.all(16.0),
  child: SingleChildScrollView(
    child:Column(
      children:<Widget> [
        Container(
          height: 200, 
          width: 300,
          child: Center(
            child: RichText(
              text: TextSpan(
                text: "My Talkative Parrot",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline, 
                  // decorationColor: Colors.purpleAccent,
                  decorationStyle: TextDecorationStyle.double ,
                  decorationThickness: Checkbox.width, 
                  fontStyle: FontStyle.italic, 
                  // fontWeight: FontWeight.w500
                ), 
                children: <TextSpan>[
                  TextSpan(
                    text: "I am an Introvert",
                  ), 
                  TextSpan(
                    text:"I secretly love girls", 
                    style:TextStyle(
                      color: Colors.amber,
                      fontSize: 12, 
                      fontWeight: FontWeight.bold
                    )
                  )
                ]
              )),
          ), 
          decoration: BoxDecoration(
            // border:Border(
            //   top:BorderSide(color: Colors.black,width: 3),
            //   right: BorderSide(color: Colors.orange ,width: 3), 
            //   bottom: BorderSide(color: Colors.white54, width: 3),
            //   left: BorderSide(color: Colors.cyan,width: 3) ),
            
            color: Colors.lightGreenAccent,
            gradient: LinearGradient(
              colors:[Colors.white60, Colors.deepOrange], 
              begin: Alignment.topCenter, 
              end:Alignment.bottomRight),
            // image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.wPfEbWqq40PNkmdswib4nQHaE8?pid=ImgDet&rs=1"), 
            // fit: BoxFit.cover),
            boxShadow:[
              BoxShadow(
                color:Colors.deepOrangeAccent, 
                offset: Offset(3, 1),
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), 
              topRight: Radius.circular(15),
              bottomLeft:Radius.circular(15), 
              bottomRight:Radius.circular(50)
            ),                    
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}