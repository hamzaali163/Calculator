import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'components/button1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';

  var answer = '';

  void equalPress() {
    String finaluserinput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, right: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            userinput.toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            answer.toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(
                            title: 'AC',
                            onpress: () {
                              userinput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '+/-',
                            onpress: () {
                              userinput = userinput + '+/-';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                              title: '%',
                              onpress: () {
                                userinput = userinput + '%';
                                setState(
                                  () {},
                                );
                              }),
                          MyButton(
                              title: '/',
                              buttonColor: Colors.orange,
                              onpress: () {
                                userinput = userinput + '/';
                                setState(
                                  () {},
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '7',
                            onpress: () {
                              userinput = userinput + '7';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                            title: '8',
                            onpress: () {
                              userinput = userinput + '8';
                              setState(() {});
                            },
                          ),
                          MyButton(
                              title: '9',
                              onpress: () {
                                userinput = userinput + '9';
                                setState(
                                  () {},
                                );
                              }),
                          MyButton(
                              title: 'x',
                              buttonColor: Colors.orange,
                              onpress: () {
                                userinput = userinput + 'x';
                                setState(
                                  () {},
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '4',
                            onpress: () {
                              userinput = userinput + '4';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                            title: '5',
                            onpress: () {
                              userinput = userinput + '5';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                              title: '6',
                              onpress: () {
                                userinput = userinput + '6';
                                setState(
                                  () {},
                                );
                              }),
                          MyButton(
                              title: '-',
                              buttonColor: Colors.orange,
                              onpress: () {
                                userinput = userinput + '-';
                                setState(
                                  () {},
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '1',
                            onpress: () {
                              userinput = userinput + '1';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                            title: '2',
                            onpress: () {
                              userinput = userinput + '2';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                              title: '3',
                              onpress: () {
                                userinput = userinput + '3';
                                setState(
                                  () {},
                                );
                              }),
                          MyButton(
                              title: '+',
                              buttonColor: Colors.orange,
                              onpress: () {
                                userinput = userinput + '+';
                                setState(
                                  () {},
                                );
                              }),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '0',
                            onpress: () {
                              userinput = userinput + '0';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                            title: '.',
                            onpress: () {
                              userinput = userinput + '.';
                              setState(
                                () {},
                              );
                            },
                          ),
                          MyButton(
                              title: 'DEL',
                              onpress: () {
                                userinput = userinput.substring(
                                    0, userinput.length - 1);
                                setState(() {});
                              }),
                          MyButton(
                              title: '=',
                              buttonColor: Colors.orange,
                              onpress: () => {
                                    equalPress(),
                                    setState(
                                      () {},
                                    ),
                                  }),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
