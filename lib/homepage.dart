import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ios_game/barriers.dart';
import 'package:ios_game/rocket.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rocketYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = 0;
  bool gameHasStarted = false;
  static double barrierXone = 1;
  static double barrierXtwo = barrierXone + 1;
  static double barrierXthree = barrierXtwo + 1;
  static double barrierXfour = barrierXthree + 1;
  static double barrierX5 = barrierXfour + 1;
  static double barrierX6 = barrierX5 + 1;
  static double barrierX7 = barrierX6 + 1;
  static double barrierX8 = barrierX7 + 1;
  static double barrierX9 = barrierX8 + 1;
  static double barrierX10 = barrierX9 + 1;
  static double barrierX11 = barrierX10 + 1;
  static double barrierX12 = barrierX11 + 1;
  static double barrierX13 = barrierX12 + 1;
  static double barrierX14 = barrierX13 + 1;
  static double barrierX15 = barrierX14 + 1;
  static double barrierX16 = barrierX15 + 1;
  static double barrierX17 = barrierX16 + 1;
  static double barrierX18 = barrierX17 + 1;

  void jump() {
    setState(() {
      time = 0;
      initialHeight = rocketYaxis;
    });
  }

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.04;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        rocketYaxis = initialHeight - height;
      });

      setState(() {
        if (barrierXone < -1.3) {
          barrierXone += 6.2;
        } else {
          barrierXone -= 0.05;
        }
      });

      setState(() {
        if (barrierXtwo < -1.3) {
          barrierXtwo += 6.2;
        } else {
          barrierXtwo -= 0.05;
        }
      });

      setState(() {
        if (barrierXthree < -2.2) {
          barrierXthree += 19.2;
        } else {
          barrierXthree -= 0.05;
        }
      });

      setState(() {
        if (barrierXfour < -1.3) {
          barrierXfour += 6.2;
        } else {
          barrierXfour -= 0.05;
        }
      });

      setState(() {
        if (barrierX5 < -1.3) {
          barrierX5 += 6.2;
        } else {
          barrierX5 -= 0.05;
        }
      });

      setState(() {
        if (barrierX6 < -1.3) {
          barrierX6 += 6.2;
        } else {
          barrierX6 -= 0.05;
        }
      });

      setState(() {
        if (barrierX7 < -1.3) {
          barrierX7 += 6.2;
        } else {
          barrierX7 -= 0.05;
        }
      });

      setState(() {
        if (barrierX8 < -1.3) {
          barrierX8 += 6.2;
        } else {
          barrierX8 -= 0.05;
        }
      });

      setState(() {
        if (barrierX9 < -1.3) {
          barrierX9 += 20.2;
        } else {
          barrierX9 -= 0.05;
        }
      });

      setState(() {
        if (barrierX10 < -1.3) {
          barrierX10 += 6.2;
        } else {
          barrierX10 -= 0.05;
        }
      });

      setState(() {
        if (barrierX11 < -1.3) {
          barrierX11 += 6.2;
        } else {
          barrierX11 -= 0.05;
        }
      });
      setState(() {
        if (barrierX12 < -1.3) {
          barrierX12 += 6.2;
        } else {
          barrierX12 -= 0.05;
        }
      });

      setState(() {
        if (barrierX13 < -1.3) {
          barrierX13 += 6.2;
        } else {
          barrierX13 -= 0.05;
        }
      });

      setState(() {
        if (barrierX14 < -1.3) {
          barrierX14 += 6.2;
        } else {
          barrierX14 -= 0.05;
        }
      });

      setState(() {
        if (barrierX15 < -1.3) {
          barrierX15 += 6.2;
        } else {
          barrierX15 -= 0.05;
        }
      });

      setState(() {
        if (barrierX16 < -1.3) {
          barrierX16 += 6.2;
        } else {
          barrierX16 -= 0.05;
        }
      });

      setState(() {
        if (barrierX17 < -1.3) {
          barrierX17 += 6.2;
        } else {
          barrierX17 -= 0.05;
        }
      });

      setState(() {
        if (barrierX18 < -1.3) {
          barrierX18 += 6.2;
        } else {
          barrierX18 -= 0.05;
        }
      });

      if (rocketYaxis > 1) {
        timer.cancel();
        gameHasStarted = false;
      }
      if (rocketYaxis < -1) {
        rocketYaxis = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (gameHasStarted) {
          jump();
        } else {
          startGame();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      alignment: Alignment(0, rocketYaxis),
                      duration: Duration(milliseconds: 0),
                      color: Colors.black87,
                      child: MyRocket(),
                    ),
                    Container(
                      alignment: Alignment(0, -0.3),
                      child: gameHasStarted
                          ? Text(" ")
                          : Text(
                              "T A P   T O   P L A Y",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                    ),
                    AnimatedContainer(
                        alignment: Alignment(barrierXone, 1.9),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 200.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXone, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 200.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXtwo, 1.6),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 150.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXtwo, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 250.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXthree, 2.7),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 300.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXthree, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 190.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXfour, 1.35),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 90.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierXfour, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 90.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX5, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 100.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX5, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 80.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX6, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 90.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX6, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                        // FRWGTergoejhoitjhoitjh
                    AnimatedContainer(
                        alignment: Alignment(barrierX7, 1.4),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 110.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX7, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 130.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX8, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 90.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX8, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 100.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX9, 3.7),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 380.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX9, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 130.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX10, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 100.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX10, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 140.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX11, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 80.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX11, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX12, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX12, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX13, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX13, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX14, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX14, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX15, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX15, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX16, 1.36),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX16, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX17, 1.39),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX17, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX18, 1.38),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier(
                          size: 70.0,
                        )),
                    AnimatedContainer(
                        alignment: Alignment(barrierX18, -1),
                        duration: Duration(milliseconds: 0),
                        child: MyBarrier2(
                          size: 70.0,
                        )),

              
                  ],
                )),
            Container(
              height: 15,
              color: Colors.orange,
            ),
            Expanded(
              child: Container(
                  color: Colors.grey.shade800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("SCORE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(
                            height: 20,
                          ),
                          Text("0",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("BEST",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          SizedBox(
                            height: 20,
                          ),
                          Text("10",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
