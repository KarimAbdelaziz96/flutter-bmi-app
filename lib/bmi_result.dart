import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final int age;
  final bool ismale;
const  BmiResult({super.key, 
    required this.result,
    required this.age,
    required this.ismale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ismale
          ? Color.fromARGB(255, 140, 200, 249)
          : Color.fromARGB(255, 242, 120, 161),
      appBar: AppBar(
        backgroundColor: ismale ? Colors.white : Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined,
          color: ismale ? Colors.black : Colors.white, 
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: ismale ? Colors.black : Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey
            ),        
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Gender:${ismale ? 'male' : "Female"}",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Age:$age",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Result:$result",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
