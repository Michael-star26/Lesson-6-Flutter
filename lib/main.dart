// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructor, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import
import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() => runApp(ParrotApp());
class ParrotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      title: "Parrot",
      home: Scaffold(
        appBar: 
        AppBar(
          leading: IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.menu)),
          title: Text("Parrot"),
          flexibleSpace:SafeArea(
            child: Icon(Icons.photo_camera,
            color: Colors.cyan,
            size: 80.0,) ,          
            ),
            actions:<Widget> [
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.add_call))
            ],
            bottom:
            PreferredSize(
              child:Container(
                height: 75.0,
               child: Center(
                child: Text("Bottom Container"),
               ),
               color: Colors.green.shade300, 
              ) ,
              preferredSize: Size. fromHeight(75),
              ),
        ),
        body: Home(),
      ),
    );
  }
}
