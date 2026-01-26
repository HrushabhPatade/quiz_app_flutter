import 'package:flutter/material.dart';
import 'package:mcqapp/HomePage.dart';
import 'package:mcqapp/QuizScreen.dart';

class Resultpage extends StatelessWidget {
  final int correctedCount;
  final int noOfQuestions;

  const Resultpage({
    super.key,
    required this.correctedCount,
    required this.noOfQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("result page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                if (correctedCount > 8)
                  Column(
                    children: [
                      Text(
                        "Congratulations! You passed",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        'assets/test_success.png',
                        width: 200,
                        height: 200,
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("You have scored "),
                            Text(
                              (correctedCount * 5).toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 25,
                              ),
                            ),
                            Text(" out of ${noOfQuestions * 5}"),
                          ],
                        ),
                      ),
                    ],
                  )
                else
                  Column(
                    children: [
                      Text(
                        "Almost there, you didn’t pass this time",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "You can retake the assignment after reviewing the lesson.",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("You have scored "),
                            Text(
                              (correctedCount * 5).toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 25,
                              ),
                            ),
                            Text(" out of ${noOfQuestions * 5}"),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(height: 20),
          if (correctedCount < 8)
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2f3043),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "attempt again",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2f3043),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        "back to home page",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          else
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff2f3043),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    "back to home page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
