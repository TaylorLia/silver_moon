import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:silver_moon/pages/login.page.dart';
import 'package:silver_moon/widget/button.dart';
import 'package:silver_moon/widget/first.dart';
import 'package:silver_moon/widget/forgot.dart';
import 'package:silver_moon/widget/inputEmail.dart';
import 'package:silver_moon/widget/password.dart';
import 'package:silver_moon/widget/textLogin.dart';
import 'package:silver_moon/widget/verticalText.dart';
import 'package:silver_moon/pages/profile.dart';
import 'package:silver_moon/pages/newuser.page.dart';




class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed:(){
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
          }
        
        ), 
       
        ),
      
      body: Center(child: Text('O jogo Silver Moon ainda está sendo desenvolvido. Aguarde!', textAlign: TextAlign.center, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white, fontSize: 20))),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 84, 16, 11),
        onPressed: () => { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage(title: '',)))
        },
        child: const Icon(Icons.supervised_user_circle),
      ),
    );
  }
}
