import "package:flutter/material.dart";
import 'button.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int firstNumber = 0;
  int secondNumber = 0;
  String operation = "";
  String equalSign = "=";
  double output = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blueGrey[900],
                title: const Center(
                  child:
                      Text("Calculator", style: TextStyle(color: Colors.white)),
                )),
            body: Container(
              width: double.infinity,
              color: Colors.blueGrey[600],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              firstNumber.toString(),
                              style: (const TextStyle(fontSize: 50)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              operation,
                              style: (const TextStyle(fontSize: 50)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              secondNumber.toString(),
                              style: (const TextStyle(fontSize: 50)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              equalSign,
                              style: (const TextStyle(fontSize: 50)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              output.toString(),
                              style: (const TextStyle(fontSize: 50)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Button1(
                                char: "1",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 1;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(1, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 1;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 1;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(1, secondNumber);
                                    setState(() {});
                                  }

                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "2",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 2;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(2, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 2;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 2;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(2, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "3",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 3;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(3, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 3;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 3;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(3, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Button1(
                                char: "4",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 4;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(4, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 4;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 4;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(4, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "5",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 5;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(5, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 5;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 5;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(5, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "6",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 6;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(6, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 6;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 6;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(6, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Button1(
                                char: "7",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 7;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(7, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 7;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 7;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(7, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "8",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 8;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(8, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 8;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 8;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(8, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "9",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 9;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(9, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 9;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 9;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(9, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Button2(
                                char: "=",
                                event: () {
                                  if (operation == "+") {
                                    output =
                                        firstNumber.toDouble() + secondNumber;
                                  } else if (operation == "-") {
                                    output =
                                        firstNumber.toDouble() - secondNumber;
                                  } else if (operation == "*") {
                                    output =
                                        firstNumber.toDouble() * secondNumber;
                                  } else if (operation == "/") {
                                    double a = firstNumber.toDouble();
                                    double b = secondNumber.toDouble();
                                    output = firstNumber / secondNumber;
                                  }
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button1(
                                char: "0",
                                event: () {
                                  if (firstNumber == 0000 && operation == "") {
                                    firstNumber = 0;
                                    setState(() {});
                                  } else if (firstNumber != 0 &&
                                      operation == "") {
                                    firstNumber = concatenate(0, firstNumber);
                                    setState(() {});
                                  } else if (output != 0.0) {
                                    output = 0;
                                    firstNumber = 0;
                                    secondNumber = 0;
                                    operation = "";
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber == 0) {
                                    secondNumber = 0;
                                    setState(() {});
                                  } else if (operation != "" &&
                                      secondNumber != 0) {
                                    secondNumber = concatenate(0, secondNumber);
                                    setState(() {});
                                  }
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button2(
                                char: "C",
                                event: () {
                                  firstNumber = 0;
                                  operation = "";
                                  output = 0;
                                  secondNumber = 0;
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Button2(
                                char: "+",
                                event: () {
                                  operation = "+";
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button2(
                                char: "-",
                                event: () {
                                  operation = "-";
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button2(
                                char: "/",
                                event: () {
                                  operation = "/";
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Button2(
                                char: "*",
                                event: () {
                                  operation = "*";
                                  setState(() {});
                                }),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ],
                    ),
                  ]),
            )));
  }
}

int concatenate(int enteredNumber, int firstNumber) {
  String s1 = enteredNumber.toString();
  String s2 = firstNumber.toString();

  // Concatenate both strings
  String s = s2 + s1;

  // Convert the concatenated string
  // to integer
  int c = int.parse(s);

  // return the formed integer
  return c;
}

calculations(
    {required int number,
    required int FirstNumber,
    required int SecondNumber,
    required String Operation,
    required double Output}) {
  if (FirstNumber == 0000 && Operation == "") {
    FirstNumber = number;
  } else if (FirstNumber != 0 && Operation == "") {
    FirstNumber = concatenate(number, FirstNumber);
  } else if (Output != 0.0) {
    Output = 0;
    FirstNumber = number;
    SecondNumber = 0;
    Operation = "";
  } else if (Operation != "" && SecondNumber == 0) {
    SecondNumber = number;
  } else if (Operation != "" && SecondNumber != 0) {
    SecondNumber = concatenate(number, SecondNumber);
  }
}
