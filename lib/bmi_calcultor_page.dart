import 'dart:math';

import 'package:bmi_calculator/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

bool ismale = true;
double height = 120.0;
int age = 16;
int weight = 40;

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ismale
          ? const Color.fromARGB(255, 140, 200, 249)
          : const Color.fromARGB(255, 242, 120, 161),
      appBar: AppBar(
        backgroundColor: ismale ? Colors.white : Colors.pink,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: ismale ? Colors.black : Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: ismale ? Colors.blue : Colors.grey[600]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.male,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: ismale ? Colors.grey[600] : Colors.pink),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.female,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 3.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        color: ismale ? Colors.white : Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: ismale ? Colors.blue : Colors.pink,
                    inactiveColor: ismale
                        ? Color.fromARGB(255, 3, 26, 46)
                        : Color.fromARGB(255, 174, 105, 128),
                    value: height,
                    max: 220.0,
                    min: 80.0,
                    onChanged: ((value) {
                      setState(() {
                        height = value;
                      });
                    }),
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[600]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                  color: ismale ? Colors.white : Colors.pink,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor:
                                      ismale ? Colors.blue : Colors.pink,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: "age--",
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor:
                                      ismale ? Colors.blue : Colors.pink,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: "age++",
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[600]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                  color: ismale ? Colors.white : Colors.pink,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor:
                                      ismale ? Colors.blue : Colors.pink,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: "weight--",
                                  mini: true,
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  backgroundColor:
                                      ismale ? Colors.blue : Colors.pink,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: "weight++",
                                  mini: true,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Container(
            color: Colors.grey[600],
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                log(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResult(
                        age: age,
                        result: result.round(),
                        ismale: ismale,
                      ),
                    ));
              },
              child: Text(
                "CALCULATOR",
                style: TextStyle(
                    color: ismale ? Colors.white : Colors.pink,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  //var result = weight / pow(height / 100, 2);
  //print(result. round());
}
