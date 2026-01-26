import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcqapp/ResultPage.dart';
import 'package:mcqapp/option_model.dart';

// String jsonString = """{
//       "data": {
//   "attemptCount": "0",
//   "questions": [
//   {
//   "questionText": "Emotional intelligence primarily involves:1",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:2",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:3",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:4",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:5",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:6",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:7",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves8:",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:9",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:10",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:11",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:12",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:13",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:14",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:15",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:16",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:17",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:18",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:19",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:20",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:21",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:22",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:23",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:24",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:25",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:26",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:27",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:28",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:29",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   },
//   {
//   "questionText": "Emotional intelligence primarily involves:30",
//   "selectedOptions": [
//   {
//   "option1": "Memorizing facts",
//   "option2": "Managing and understanding emotions",
//   "option3": "Analyzing data effectively",
//   "option4": "Increasing IQ levels",
//   "answer": "Option 1"
//   }
//   ]
//   }
//   ]
//   },
//   "message": "Successful",
//   "status": "SUCCESS"
// }""";

String jsonString = """{
  "data": {
    "attemptCount": "0",
    "questions": [
      { "questionText": "What is the capital of India?",
        "selectedOptions": [{ "option1": "Mumbai", "option2": "New Delhi", "option3": "Chennai", "option4": "Kolkata", "answer": "Option 2" }] },

      { "questionText": "How many days are there in a week?",
        "selectedOptions": [{ "option1": "5", "option2": "6", "option3": "7", "option4": "8", "answer": "Option 3" }] },

      { "questionText": "Which is the largest planet in our solar system?",
        "selectedOptions": [{ "option1": "Earth", "option2": "Mars", "option3": "Jupiter", "option4": "Venus", "answer": "Option 3" }] },

      { "questionText": "What is the national animal of India?",
        "selectedOptions": [{ "option1": "Lion", "option2": "Elephant", "option3": "Tiger", "option4": "Horse", "answer": "Option 3" }] },

      { "questionText": "Which color is made by mixing red and white?",
        "selectedOptions": [{ "option1": "Pink", "option2": "Purple", "option3": "Brown", "option4": "Orange", "answer": "Option 1" }] },

      { "questionText": "How many continents are there in the world?",
        "selectedOptions": [{ "option1": "5", "option2": "6", "option3": "7", "option4": "8", "answer": "Option 3" }] },

      { "questionText": "Which animal is known as the King of the Jungle?",
        "selectedOptions": [{ "option1": "Tiger", "option2": "Lion", "option3": "Elephant", "option4": "Leopard", "answer": "Option 2" }] },

      { "questionText": "What is the national bird of India?",
        "selectedOptions": [{ "option1": "Parrot", "option2": "Sparrow", "option3": "Peacock", "option4": "Crow", "answer": "Option 3" }] },

      { "questionText": "How many hours are there in a day?",
        "selectedOptions": [{ "option1": "12", "option2": "18", "option3": "24", "option4": "36", "answer": "Option 3" }] },

      { "questionText": "Which shape has 3 sides?",
        "selectedOptions": [{ "option1": "Square", "option2": "Rectangle", "option3": "Triangle", "option4": "Circle", "answer": "Option 3" }] },

      { "questionText": "Which is the fastest land animal?",
        "selectedOptions": [{ "option1": "Horse", "option2": "Dog", "option3": "Cheetah", "option4": "Lion", "answer": "Option 3" }] },

      { "questionText": "What is H2O commonly known as?",
        "selectedOptions": [{ "option1": "Salt", "option2": "Water", "option3": "Sugar", "option4": "Oxygen", "answer": "Option 2" }] },

      { "questionText": "How many months are there in a year?",
        "selectedOptions": [{ "option1": "10", "option2": "11", "option3": "12", "option4": "13", "answer": "Option 3" }] },

      { "questionText": "Which planet is known as the Red Planet?",
        "selectedOptions": [{ "option1": "Earth", "option2": "Venus", "option3": "Mars", "option4": "Jupiter", "answer": "Option 3" }] },

      { "questionText": "Which is the largest ocean in the world?",
        "selectedOptions": [{ "option1": "Indian Ocean", "option2": "Atlantic Ocean", "option3": "Pacific Ocean", "option4": "Arctic Ocean", "answer": "Option 3" }] },

      { "questionText": "Which fruit is known as the King of Fruits in India?",
        "selectedOptions": [{ "option1": "Apple", "option2": "Banana", "option3": "Mango", "option4": "Orange", "answer": "Option 3" }] },

      { "questionText": "How many letters are there in the English alphabet?",
        "selectedOptions": [{ "option1": "24", "option2": "25", "option3": "26", "option4": "27", "answer": "Option 3" }] },

      { "questionText": "Which day comes after Friday?",
        "selectedOptions": [{ "option1": "Thursday", "option2": "Saturday", "option3": "Sunday", "option4": "Monday", "answer": "Option 2" }] },

      { "questionText": "What do plants need to make food?",
        "selectedOptions": [{ "option1": "Moonlight", "option2": "Sunlight", "option3": "Fire", "option4": "Smoke", "answer": "Option 2" }] },

      { "questionText": "Which is the tallest animal in the world?",
        "selectedOptions": [{ "option1": "Elephant", "option2": "Camel", "option3": "Giraffe", "option4": "Horse", "answer": "Option 3" }] },

      { "questionText": "Which gas do humans breathe in?",
        "selectedOptions": [{ "option1": "Carbon Dioxide", "option2": "Oxygen", "option3": "Nitrogen", "option4": "Hydrogen", "answer": "Option 2" }] },

      { "questionText": "How many wheels does a bicycle have?",
        "selectedOptions": [{ "option1": "1", "option2": "2", "option3": "3", "option4": "4", "answer": "Option 2" }] },

      { "questionText": "Which is the nearest star to Earth?",
        "selectedOptions": [{ "option1": "Moon", "option2": "Sun", "option3": "Mars", "option4": "Polaris", "answer": "Option 2" }] },

      { "questionText": "Which is the smallest continent?",
        "selectedOptions": [{ "option1": "Europe", "option2": "Australia", "option3": "Africa", "option4": "Asia", "answer": "Option 2" }] },

      { "questionText": "Which animal gives us milk?",
        "selectedOptions": [{ "option1": "Dog", "option2": "Cat", "option3": "Cow", "option4": "Lion", "answer": "Option 3" }] },

      { "questionText": "What is the color of the sun as seen from Earth?",
        "selectedOptions": [{ "option1": "Blue", "option2": "Green", "option3": "Yellow", "option4": "Red", "answer": "Option 3" }] },

      { "questionText": "Which festival is known as the Festival of Lights?",
        "selectedOptions": [{ "option1": "Holi", "option2": "Diwali", "option3": "Eid", "option4": "Christmas", "answer": "Option 2" }] },

      { "questionText": "Which instrument is used to see very small objects?",
        "selectedOptions": [{ "option1": "Telescope", "option2": "Microscope", "option3": "Binoculars", "option4": "Camera", "answer": "Option 2" }] },

      { "questionText": "Which is the longest river in the world?",
        "selectedOptions": [{ "option1": "Ganga", "option2": "Amazon", "option3": "Nile", "option4": "Yamuna", "answer": "Option 3" }] },

      { "questionText": "How many zeros are there in one thousand?",
        "selectedOptions": [{ "option1": "1", "option2": "2", "option3": "3", "option4": "4", "answer": "Option 3" }] }
    ]
  },
  "message": "Successful",
  "status": "SUCCESS"
}""";


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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${qIndex + 1}.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                question.questionText,
                                softWrap: true,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 8),
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
