import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcqapp/ResultPage.dart';
import 'package:mcqapp/option_model.dart';

String jsonString = """{
      "data": {
  "attemptCount": "0",
  "questions": [
  {
  "questionText": "Emotional intelligence primarily involves:1",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:2",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:3",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:4",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:5",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:6",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:7",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves8:",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:9",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:10",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:11",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:12",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:13",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:14",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:15",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:16",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:17",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:18",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:19",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:20",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:21",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:22",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:23",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:24",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:25",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:26",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:27",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:28",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:29",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  },
  {
  "questionText": "Emotional intelligence primarily involves:30",
  "selectedOptions": [
  {
  "option1": "Memorizing facts",
  "option2": "Managing and understanding emotions",
  "option3": "Analyzing data effectively",
  "option4": "Increasing IQ levels",
  "answer": "Option 1"
  }
  ]
  }
  ]
  },
  "message": "Successful",
  "status": "SUCCESS"
}""";

// String jsonString = """{
//   "data": {
//     "attemptCount": "0",
//     "questions": [
//       {
//         "questionText": "In mPower, PJP stands for:",
//         "selectedOptions": [
//           {
//             "option1": "Personal Job Profile",
//             "option2": "Planned Journey Plan",
//             "option3": "Primary Job Process",
//             "option4": "Partner Journey Program",
//             "answer": "Option 2"
//           }
//         ]
//       },
//       {
//         "questionText": "Which feature is used to mark retailer visit in mPower?",
//         "selectedOptions": [
//           {
//             "option1": "Attendance",
//             "option2": "Retailer Check-in",
//             "option3": "SIM Activation",
//             "option4": "Expense Claim",
//             "answer": "Option 2"
//           }
//         ]
//       },
//       {
//         "questionText": "Geo-fencing in mPower is mainly used to:",
//         "selectedOptions": [
//           {
//             "option1": "Block SIM cards",
//             "option2": "Track device battery",
//             "option3": "Verify physical store visit",
//             "option4": "Upload KYC documents",
//             "answer": "Option 3"
//           }
//         ]
//       },
//       {
//         "questionText": "Which module is used to view daily sales targets?",
//         "selectedOptions": [
//           {
//             "option1": "KPI Dashboard",
//             "option2": "Help Desk",
//             "option3": "Profile Settings",
//             "option4": "Notification Center",
//             "answer": "Option 1"
//           }
//         ]
//       },
//       {
//         "questionText": "SIP in mPower generally refers to:",
//         "selectedOptions": [
//           {
//             "option1": "Sales Incentive Program",
//             "option2": "Service Improvement Plan",
//             "option3": "SIM Issue Portal",
//             "option4": "Sales Information Page",
//             "answer": "Option 1"
//           }
//         ]
//       },
//       {
//         "questionText": "Which action ensures proper attendance capture?",
//         "selectedOptions": [
//           {
//             "option1": "Daily login",
//             "option2": "Geo-tagged punch-in",
//             "option3": "Profile update",
//             "option4": "Password reset",
//             "answer": "Option 2"
//           }
//         ]
//       },
//       {
//         "questionText": "Retailer onboarding is mainly used to:",
//         "selectedOptions": [
//           {
//             "option1": "Deactivate retailers",
//             "option2": "Register new retail partners",
//             "option3": "Block SIM inventory",
//             "option4": "View competitor data",
//             "answer": "Option 2"
//           }
//         ]
//       },
//       {
//         "questionText": "Which section is used to raise field-related issues?",
//         "selectedOptions": [
//           {
//             "option1": "Help & Support",
//             "option2": "KPI Summary",
//             "option3": "SIM Sales",
//             "option4": "Recharge History",
//             "answer": "Option 1"
//           }
//         ]
//       },
//       {
//         "questionText": "Beat planning in mPower helps to:",
//         "selectedOptions": [
//           {
//             "option1": "Schedule daily market visits",
//             "option2": "Generate salary slips",
//             "option3": "Change app language",
//             "option4": "Download training videos",
//             "answer": "Option 1"
//           }
//         ]
//       },
//       {
//         "questionText": "Which report shows promoter productivity?",
//         "selectedOptions": [
//           {
//             "option1": "Expense Report",
//             "option2": "Performance Dashboard",
//             "option3": "Device Info",
//             "option4": "Profile Summary",
//             "answer": "Option 2"
//           }
//         ]
//       },
//
//       { "questionText": "mPower helps track which of the following?",
//         "selectedOptions": [{ "option1": "Only SIM stock", "option2": "Field visit & sales performance", "option3": "Only recharge", "option4": "Only complaints", "answer": "Option 2" }] },
//
//       { "questionText": "Which feature validates location during store visit?",
//         "selectedOptions": [{ "option1": "OTP login", "option2": "GPS tagging", "option3": "Manual entry", "option4": "WiFi scan", "answer": "Option 2" }] },
//
//       { "questionText": "Distributor hierarchy helps to:",
//         "selectedOptions": [{ "option1": "Change SIM tariff", "option2": "Track reporting structure", "option3": "Reset password", "option4": "Block user", "answer": "Option 2" }] },
//
//       { "questionText": "Which module shows target vs achievement?",
//         "selectedOptions": [{ "option1": "KPI Tracker", "option2": "Settings", "option3": "Help Desk", "option4": "Profile", "answer": "Option 1" }] },
//
//       { "questionText": "Market feedback is mainly used for:",
//         "selectedOptions": [{ "option1": "Improving sales strategy", "option2": "Changing SIM number", "option3": "Deleting account", "option4": "Recharge reversal", "answer": "Option 1" }] },
//
//       { "questionText": "Geo-fence violation indicates:",
//         "selectedOptions": [{ "option1": "Low battery", "option2": "Out of assigned location", "option3": "Login error", "option4": "SIM blocked", "answer": "Option 2" }] },
//
//       { "questionText": "Which action records start of field work?",
//         "selectedOptions": [{ "option1": "Logout", "option2": "Punch-in", "option3": "Profile edit", "option4": "SIM scan", "answer": "Option 2" }] },
//
//       { "questionText": "Which helps managers monitor team activity?",
//         "selectedOptions": [{ "option1": "Team Dashboard", "option2": "Device Settings", "option3": "Help Desk", "option4": "Logout", "answer": "Option 1" }] },
//
//       { "questionText": "Retailer visit history is used to:",
//         "selectedOptions": [{ "option1": "Delete retailers", "option2": "Analyze coverage & frequency", "option3": "Block SIMs", "option4": "Reset app", "answer": "Option 2" }] },
//
//       { "questionText": "Which module supports issue escalation?",
//         "selectedOptions": [{ "option1": "Help Desk", "option2": "KPI", "option3": "Profile", "option4": "Recharge", "answer": "Option 1" }] },
//
//       { "questionText": "Focus product tracking helps to:",
//         "selectedOptions": [{ "option1": "Increase priority product sales", "option2": "Reduce SIM stock", "option3": "Change password", "option4": "Disable GPS", "answer": "Option 1" }] },
//
//       { "questionText": "Which data is mandatory for retailer check-in?",
//         "selectedOptions": [{ "option1": "Photo & GPS", "option2": "Only name", "option3": "Only mobile", "option4": "Only OTP", "answer": "Option 1" }] },
//
//       { "questionText": "Which helps validate physical presence?",
//         "selectedOptions": [{ "option1": "Manual time entry", "option2": "Geo-tagged attendance", "option3": "Profile photo", "option4": "Password", "answer": "Option 2" }] },
//
//       { "questionText": "Which feature supports daily route planning?",
//         "selectedOptions": [{ "option1": "PJP", "option2": "Help Desk", "option3": "Settings", "option4": "Profile", "answer": "Option 1" }] },
//
//       { "questionText": "Which report helps analyze market coverage?",
//         "selectedOptions": [{ "option1": "Visit Coverage Report", "option2": "Profile Report", "option3": "Password Report", "option4": "Device Report", "answer": "Option 1" }] },
//
//       { "questionText": "Which supports compliance for field visits?",
//         "selectedOptions": [{ "option1": "GPS & Time Stamp", "option2": "Manual notes", "option3": "Profile edit", "option4": "Theme change", "answer": "Option 1" }] },
//
//       { "questionText": "Which helps track inactive retailers?",
//         "selectedOptions": [{ "option1": "Retailer Activity Report", "option2": "Profile", "option3": "Settings", "option4": "Help Desk", "answer": "Option 1" }] },
//
//       { "questionText": "Which supports audit of field activity?",
//         "selectedOptions": [{ "option1": "Visit Logs", "option2": "Theme", "option3": "Profile", "option4": "Logout", "answer": "Option 1" }] },
//
//       { "questionText": "Which helps improve distributor productivity?",
//         "selectedOptions": [{ "option1": "Performance Analytics", "option2": "Wallpaper", "option3": "Profile", "option4": "Logout", "answer": "Option 1" }] },
//
//       { "questionText": "Which module helps track daily KPIs?",
//         "selectedOptions": [{ "option1": "KPI Dashboard", "option2": "Help Desk", "option3": "Settings", "option4": "Profile", "answer": "Option 1" }] }
//     ]
//   },
//   "message": "Successful",
//   "status": "SUCCESS"
// }""";

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questions = [];
  List<int?> selectedAnswers = [];

  int noOfQuestionsAttempted = 0;

  @override
  void initState() {
    super.initState();
    loadQuestions();
  }

  void loadQuestions() {
    final decoded = jsonDecode(jsonString);
    final List questionsJson = decoded['data']['questions'];
    List<Question> allQuestions = questionsJson
        .map((e) => Question.fromJson(e))
        .toList();
    allQuestions.shuffle();
    questions = allQuestions.take(10).toList();

    selectedAnswers = List.filled(questions.length, null);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Neeti MCQ")),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "total questions : ${questions.length}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "questions attempted : ${noOfQuestionsAttempted}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, qIndex) {
                final question = questions[qIndex];

                return Container(
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              (qIndex + 1).toString() + ".",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                question.questionText,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "5 Marks",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),

                        for (
                          int optionIndex = 0;
                          optionIndex < question.options.length;
                          optionIndex++
                        )
                          RadioListTile<int>(
                            title: Text(question.options[optionIndex]),
                            value: optionIndex,
                            groupValue: selectedAnswers[qIndex],
                            onChanged: (value) {
                              setState(() {
                                if (selectedAnswers[qIndex] == null) {
                                  noOfQuestionsAttempted =
                                      noOfQuestionsAttempted + 1;
                                }
                                selectedAnswers[qIndex] = value;
                              });
                            },
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // 👇 Bottom Button
          Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2f3043),
                ),
                onPressed: () {
                  bool allAnswered = selectedAnswers.every(
                    (ans) => ans != null,
                  );
                  if (!allAnswered) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please answer all questions")),
                    );
                    return;
                  }
                  int correctCount = 0;
                  for (int i = 0; i < questions.length; i++) {
                    final userAnswer = selectedAnswers[i]!;
                    final correctAnswer = questions[i].correctIndex;
                    if (userAnswer == correctAnswer) {
                      correctCount++;
                    }
                  }
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Resultpage(
                        correctedCount: correctCount,
                        noOfQuestions: questions.length,
                      ),
                    ),
                  );
                  print("User Answers: $selectedAnswers");
                  print("Correct Count: $correctCount");
                },
                child: Text("Submit", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
