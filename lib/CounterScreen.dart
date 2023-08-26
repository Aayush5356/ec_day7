import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF1F0E8),
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Text("Calc"),
            centerTitle: true,
            backgroundColor: const Color(0xff749BC2),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$num",
                  style: TextStyle(fontSize: 100, color: Colors.grey.shade600),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff749BC2),),
                      onPressed: () {
                        setState(() {
                          num=num-2;
                        });
                      },
                      child: const Text(
                        "     -2     ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff749BC2),),
                        onPressed: () {setState(() {
                          num=num+2;
                        });},
                        child: const Text(
                          "     +2     ",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff749BC2),),
                      onPressed: () {setState(() {
                        num=num-4;
                      });},
                      child: const Text(
                        "     -4     ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff749BC2),),
                        onPressed: () {setState(() {
                          num=num+4;
                        });},
                        child: const Text(
                          "     +4     ",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff749BC2),),
                  onPressed: () {setState(() {
                    num=0;
                  });},
                  child: const Text(
                    "     Clear     ",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
