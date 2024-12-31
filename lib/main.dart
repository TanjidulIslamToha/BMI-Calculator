import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

double height = 50;
int weight = 50, age = 22;
String gender = "male";
double bmiresult = 0;
double bmrresult = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1C),
      body: SafeArea(
        child: Design(),
      ),
    );
  }

  Widget Design() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GenderSelector(),
                Height(),
                WA(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              BMI(),
              SizedBox(height: 10),
              BMR(),
            ],
          ),
        )
      ],
    );
  }

  Widget GenderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                gender = "male";
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff282424),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.male,
                color: gender == "male" ? Color(0xff6454a3) : Colors.white70,
                size: 50,
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                gender = "female";
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 100,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff282424),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.female,
                color: gender == "female" ? Color(0xff6454a3) : Colors.white70,
                size: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget Height() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff282424),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Height",
            style: TextStyle(color: Colors.white70, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Slider(
            min: 1,
            max: 250,
            divisions: 250,
            value: height,
            activeColor: Color(0xff6454a3),
            inactiveColor: Colors.white30,
            onChanged: (v) {
              setState(() {
                height = v.round().toDouble();
              });
            },
          ),
          Text(
            "${height.toString()} cm",
            style: TextStyle(color: Colors.white70, fontSize: 18),
          )
        ],
      ),
    );
  }

  Widget WA() {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff282424),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                CustomizableCounter(

                  borderColor: Colors.transparent,
                  backgroundColor: Color(0xff100c0c),
                  borderWidth: 5,
                  borderRadius: 100,
                  textColor: Colors.white,
                  textSize: 22,
                  showButtonText: false,
                  count: weight.toDouble(),
                  step: 1,
                  minCount: 0,
                  maxCount: 200,
                  incrementIcon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decrementIcon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onCountChange: (count) {
                    setState(() {
                      weight = count.toInt();
                    });
                  },
                ),
                Text(
                  "Weight",
                  style: TextStyle(color: Colors.white70, fontSize: 17),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff282424),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomizableCounter(
                  borderColor: Colors.transparent,
                  backgroundColor: Color(0xff100c0c),
                  borderWidth: 5,
                  borderRadius: 100,
                  textColor: Colors.white,
                  textSize: 22,
                  showButtonText: false,
                  count: age.toDouble(),
                  step: 1,
                  minCount: 0,
                  maxCount: 120,
                  incrementIcon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  decrementIcon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onCountChange: (count) {
                    setState(() {
                      age = count.toInt();
                    });
                  },
                ),
                Text(
                  "Age",
                  style: TextStyle(color: Colors.white70, fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget BMI() {
    bmiresult = weight / ((height / 100) * (height / 100));
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff282424),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        "BMI: ${bmiresult.toStringAsFixed(3)}",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
    );
  }

  Widget BMR() {
    if (gender == "male") {
      bmrresult = 66.5 + (13.75 * weight) + (5.003 * height) - (6.755 * age);
    } else if (gender == "female") {
      bmrresult = 655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age);
    }

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff282424),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Text(
        "BMR: ${bmrresult.toStringAsFixed(3)}",
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ),
    );
  }
}
