import 'package:app/CostumWidget/costum.dart';
import 'package:app/prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int curridx = 0;

  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  String fabcondition = 'home';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(17))),
            elevation: 2.0,
            title: const Text("Hei"),
            centerTitle: true,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              elevation: fabcondition == 'home' ? 0 : 50,
              onPressed: () {
                setState(() {
                  if (fabcondition == 'home') {
                    _animationController.forward();
                    fabcondition = 'about';
                  } else {
                    _animationController.reverse();
                    fabcondition = 'home';
                  }
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_arrow,
                progress: _animationController,
              )),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: GlassMorphism(
                blur: 2,
                opacity: 0.2,
                borderOpacity: 0.3,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Profile(),
                        Divider(
                          height: 20,
                          thickness: 2,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        const Action(),
                        Divider(
                          height: 20,
                          thickness: 2,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        const Description()
                      ],
                    ),
                  ),
                )),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        curridx = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      color: curridx == 0 ? Colors.black : Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        curridx = 1;
                      });
                    },
                    icon: Icon(
                      Icons.question_mark,
                      color: curridx == 1 ? Colors.black : Colors.grey,
                    )),
              ],
            ),
          )),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
            onTap: () {
              setState(() {
                _state = !_state;
              });
            },
            child: AnimatedContainer(
                width: _state ? 150 : 63,
                duration: Duration(milliseconds: 500),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white.withOpacity(0.6)),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Icon(Icons.people)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Text("Jikky"), Text("211110217")],
                      )
                    ],
                  ),
                ))),
        SizedBox(
          width: 35,
        ),
        Expanded(
          child: Column(
            children: [
              AnimatedAlign(
                  duration: Duration(milliseconds: 500),
                  alignment: _state ? Alignment.center : Alignment.centerLeft,
                  child: Text(
                    "Monday",
                    style: TextStyle(
                        fontSize: 23, color: Colors.white.withOpacity(0.8)),
                  )),
              AnimatedAlign(
                  duration: Duration(milliseconds: 500),
                  alignment: _state ? Alignment.center : Alignment.centerRight,
                  child: Text(
                    "08:26:19",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.8)),
                  )),
            ],
          ),
        ),
        SizedBox(
          width: 35,
        )
      ],
    );
  }
}

class Action extends StatelessWidget {
  const Action({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: RoundedContainer(
              margin: const EdgeInsets.only(right: 15),
              padding: const EdgeInsets.all(7),
              color: Colors.white.withOpacity(0.1),
              child: Column(
                children: [
                  RoundedContainer(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    color: Colors.white.withOpacity(0.2),
                    radius: 5,
                    child: const Icon(
                      Icons.bookmarks,
                      color: Colors.amber,
                    ),
                  ),
                  const Text(
                    "Bookmark",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 250, 215, 90)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RoundedContainer(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    color: Colors.white.withOpacity(0.2),
                    radius: 5,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                  ),
                  const Text(
                    "Bookmark",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 128, 170)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  TaskBubble(
                    text: "Do PAM Homework",
                    value: 0,
                  ),
                  TaskBubble(
                    text: "Workout for 15 minutes",
                    value: 1,
                  ),
                  TaskBubble(
                    text: "Sleep 8 hours",
                    value: 2,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            RoundedContainer(
              color: Colors.white.withOpacity(0.1),
              radius: 8,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 13),
                      child: Text("Do PAM Homework",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.5)))),
                  RoundedContainer(
                    color: Colors.white.withOpacity(0.2),
                    radius: 6,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "This is desc of 'Do PAM Homework'. Dasarnya hanya mengerjakan dengan sungguh sungguh",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}

// ignore: must_be_immutable
class TaskBubble extends StatefulWidget {
  String text;
  int value;
  TaskBubble({super.key, required this.text, required this.value});

  @override
  State<TaskBubble> createState() => _TaskBubbleState();
}

class _TaskBubbleState extends State<TaskBubble> {
  bool _state = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Prov>(context);
    return Expanded(
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            if (widget.value == prov.taskStatus) {
              prov.settaskStatus = null;
            } else {
              prov.settaskStatus = widget.value;
            }
            _state = true;
          });
        },
        onTapUp: (details) {
          setState(() {
            _state = false;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(
              vertical: _state ? 12 : 10, horizontal: _state ? 8 : 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              color: Colors.white.withOpacity(_state
                  ? 0.2
                  : prov.taskStatus == widget.value
                      ? 0.3
                      : 0.1)
              // Colors.white.withOpacity(prov.taskStatus == widget.value?0.3:0.1)
              ),
          child: Center(
              child: Text(widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _state ? 17.5 : 18,
                      color: Colors.white.withOpacity(_state
                          ? 0.7
                          : prov.taskStatus == widget.value
                              ? 0.9
                              : 0.5)
                      // Colors.white.withOpacity(prov.taskStatus == widget.value?0.8:0.5)
                      ))),
        ),
      ),
    );
  }
}
