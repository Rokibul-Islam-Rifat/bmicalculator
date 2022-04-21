import 'package:day_22/calculation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 20;
  int weight = 30;
  double height = 170;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                          color:
                              isMale == true ? Colors.blue : Color(0xff111328),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.man,
                              color: Colors.white,
                              size: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        decoration: BoxDecoration(
                          color:
                              isMale == false ? Colors.pink : Color(0xff111328),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.woman,
                              color: Colors.white,
                              size: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xff111328),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.toStringAsFixed(0)}",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        Text(
                          "CM",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 18),
                        overlayColor: Colors.blueAccent,
                        thumbColor: Colors.grey,
                        activeTickMarkColor: Colors.white,
                        inactiveTickMarkColor: Colors.grey,
                      ),
                      child: Slider(
                          min: 90,
                          max: 220,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff111328),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                  ;
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff111328),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  if (weight > 0) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                  ;
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(15),
                                ),
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
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  var cal = Calculation(
                    age: age,
                    height: height,
                    weight: weight,
                  );
                  bmi = cal.getresult();
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Expanded(
                        child: AlertDialog(
                          backgroundColor: Colors.orangeAccent,
                          title: Text('The Result is $bmi'),
                          content: Text(bmi > 23
                              ? 'You are over weight, do some Exercise'
                              : bmi > 10
                                  ? 'You are ok, Just need some good sleep'
                                  : 'You are Perfect'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'YES',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'NO',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Calculator",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var bmi;
}
