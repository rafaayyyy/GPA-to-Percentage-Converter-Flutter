import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Percentage Calculator BSCS20004'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cgpa = TextEditingController();
  double cgpaval = 0;

  void submitData() {
    final double enteredAmount = double.parse(cgpa.text);
    if (enteredAmount <= 0) {
      return;
    }
    cgpaval = enteredAmount;
    showPercentage(cgpaval);
  }

  double calculatePercentage(double val) {
    if (val >= 3.63) {
      return (val - 0.3) / 0.037;
    } else if (val >= 3.25) {
      return (val - 0.29) / 0.037;
    } else if (val >= 2.88) {
      return (val - 0.36) / 0.036;
    } else if (val >= 2.5) {
      return (val - 0.28) / 0.037;
    } else if (val >= 1.8) {
      return (val + 1.65) / 0.069;
    } else if (val >= 1) {
      return (val + 2.16) / 0.079;
    } else if (val > 0) {
      return val / 0.00248;
    } else {
      return 0;
    }
  }

  String percen = "";
  void showPercentage(cgpaval) {
    setState(() {
      double temp = calculatePercentage(cgpaval);
      percen = temp.toString().substring(0, 5);
      // Fluttertoast.showToast(
      //   msg: percen,
      //   toastLength: Toast.LENGTH_SHORT,
      //   gravity: ToastGravity.BOTTOM,
      //   backgroundColor: Colors.blueGrey,
      //   timeInSecForIosWeb: 2,
      //   textColor: Colors.black,
      //   fontSize: 16.0,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Enter CGPA'),
                    controller: cgpa,
                    keyboardType: TextInputType.number,
                    onSubmitted: ((_) => submitData()),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.black)),
                      padding: const EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      showPercentage(cgpaval);
                    },
                    child: const Text(
                      "Get Percentage",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                    child: Text(
                      "You got a percentage of: $percen",
                      style: const TextStyle(fontSize: 20.0),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            )));
  }
}
