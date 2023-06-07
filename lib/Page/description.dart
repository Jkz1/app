import 'package:app/CostumWidget/costum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../prov.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Prov>(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Task Description"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(17))),
          elevation: 2,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: GlassMorphism(
            blur: 2,
            opacity: 0.2,
            borderOpacity: 0.3,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text(
                      prov.task[prov.taskStatus][0],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18, color: Colors.white.withOpacity(0.5)),
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        prov.task[prov.taskStatus][1],
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(child: TextButton(onPressed: (){print("cancel");}, child: Text("Cancel"))),
                        Expanded(child: TextButton(onPressed: (){print("selesai");}, child: Text("Selesai"))),
                        Expanded(child: ElevatedButton(onPressed: (){print("save");}, child: Text("Save")))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
