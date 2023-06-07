import 'package:app/CostumWidget/costum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Test extends StatefulWidget {
  Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("Hai"),),
        body: GestureDetector(
          onTap: (){
            setState(() {
              _status = !_status;
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: _status? 100: 200,
              height: _status? 200 : 100,
              child: GlassMorphism(
                blur: 1.5,
                opacity: _status? 1 : 0.5,
                child: Text("Hai")
              ),
            ),
          ),
        ),
      ),
    );
  }
}