import 'package:flutter/material.dart';
import 'package:todo/widgets.dart';

class TaskPage extends StatefulWidget {
  TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 6.0,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image(
                            image: AssetImage(
                              'assets/images/back_arrow_icon.png',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Task Title...",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF211551),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Description for the task",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        )),
                  ),
                ),
                TodoWidget(
                  text: "Create your first",
                  isDone: true,
                ),
                TodoWidget(
                  text: "Create your first todo as well",
                  isDone: true,
                ),
                TodoWidget(
                  text: "Just another todo",
                  isDone: false,
                ),
                TodoWidget(
                  isDone: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
