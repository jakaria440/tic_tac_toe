import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/all_state.dart';

import 'widgets/box_widget.dart';

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool isCrossTurn = false;
  GameState gameResult = GameState.gameTie;

  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  void gameStatesUpdate() {
    return setState(() {
      //Row reesult
      if (a == b && b == c && c != BoxState.empty) {
        if (a == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (a == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (d == e && e == f && f != BoxState.empty) {
        if (d == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (d == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (g == h && h == i && i != BoxState.empty) {
        if (g == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (g == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      //Column Match
      if (a == d && d == g && g != BoxState.empty) {
        if (a == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (a == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (b == e && b == h && h != BoxState.empty) {
        if (h == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (h == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (c == f && f == i && i != BoxState.empty) {
        if (c == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (c == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (a == e && e == i && i != BoxState.empty) {
        if (a == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (a == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
      if (c == e && e == g && g != BoxState.empty) {
        if (c == BoxState.circle) {
          gameResult = GameState.circleWon;
        } else if (c == BoxState.cross) {
          gameResult = GameState.crossWon;
        } else {
          gameResult = GameState.gameTie;
        }
      }
    });
  }

  void resetGame() {
    setState(() {
      isCrossTurn = false;
      gameResult = GameState.gameTie;

      a = BoxState.empty;

      b = BoxState.empty;

      c = BoxState.empty;

      d = BoxState.empty;

      e = BoxState.empty;

      f = BoxState.empty;

      g = BoxState.empty;

      h = BoxState.empty;

      i = BoxState.empty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 254, 75, 75),
      //   title: const Text('Return to Type'),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 224, 224, 224),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: isCrossTurn
                        ? Icon(
                            Icons.lens_outlined,
                            size: 100.0,
                          )
                        : Container(),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, left: 10, right: 10, bottom: 0.6),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 6.0,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (a == BoxState.empty) {
                                if (isCrossTurn) {
                                  a = BoxState.circle;
                                } else {
                                  a = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: a),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (b == BoxState.empty) {
                                if (isCrossTurn) {
                                  b = BoxState.circle;
                                } else {
                                  b = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: b),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (c == BoxState.empty) {
                                if (isCrossTurn) {
                                  c = BoxState.circle;
                                } else {
                                  c = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: c),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (d == BoxState.empty) {
                                if (isCrossTurn) {
                                  d = BoxState.circle;
                                } else {
                                  d = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: d),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (e == BoxState.empty) {
                                if (isCrossTurn) {
                                  e = BoxState.circle;
                                } else {
                                  e = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: e),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (f == BoxState.empty) {
                                if (isCrossTurn) {
                                  f = BoxState.circle;
                                } else {
                                  f = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: f),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (g == BoxState.empty) {
                                if (isCrossTurn) {
                                  g = BoxState.circle;
                                } else {
                                  g = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: g),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (h == BoxState.empty) {
                                if (isCrossTurn) {
                                  h = BoxState.circle;
                                } else {
                                  h = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: h),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (i == BoxState.empty) {
                                if (isCrossTurn) {
                                  i = BoxState.circle;
                                } else {
                                  i = BoxState.cross;
                                }
                              }
                              isCrossTurn = !isCrossTurn;
                              gameStatesUpdate();
                            });
                          },
                          child: BoxWidget(box: i),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: !isCrossTurn
                        ? Icon(
                            Icons.close,
                            size: 110.0,
                          )
                        : Container(),
                  ),
                )
              ],
            ),
            gameResult == GameState.gameTie &&
                        a != BoxState.empty &&
                        b != BoxState.empty &&
                        c != BoxState.empty &&
                        d != BoxState.empty &&
                        e != BoxState.empty &&
                        f != BoxState.empty &&
                        g != BoxState.empty &&
                        h != BoxState.empty &&
                        i != BoxState.empty ||
                    gameResult == GameState.crossWon ||
                    gameResult == GameState.circleWon
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white.withOpacity(0.5),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            gameResult == GameState.circleWon
                                ? "Circle Won !"
                                : gameResult == GameState.crossWon
                                    ? "Cross Won !"
                                    : "Game Tie !",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 254, 75, 75)
                                            .withOpacity(0.8)),
                                  ),
                                  onPressed: () {
                                    resetGame();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      "Play Again ?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(255, 254, 75, 75)
                                            .withOpacity(0.8)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      "Go Back",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
