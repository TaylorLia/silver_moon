import 'package:flutter/material.dart';

class NewNome extends StatefulWidget {
  @override
  _NewNomeState createState() => _NewNomeState();
}

class _NewNomeState extends State<NewNome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.black,
            labelText: 'Nome de Usuário',
            labelStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}