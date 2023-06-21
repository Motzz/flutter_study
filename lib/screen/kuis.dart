import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionObj {
  String narration;
  String option_a;
  String option_b;
  String option_c;
  String option_d;
  String answer;

  QuestionObj(this.narration, this.option_a, this.option_b, this.option_c,
      this.option_d, this.answer);
}

class Kuis extends StatefulWidget {
  const Kuis({super.key});

  @override
  State<StatefulWidget> createState() {
    return _KuisState();
  }
}

class _KuisState extends State<Kuis> {
  int _initValue = 10;
  int _hitung = 0;
  late Timer _timer;
  bool _jalan = false;

  List<QuestionObj> _questions = [];
  int _question_no = 0;
  int _point = 0;

  String formatTime(int hitung) {
    var hours = (hitung ~/ 3600).toString().padLeft(2, '0');
    var minutes = ((hitung % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (hitung % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  finishQuiz() {
    _timer.cancel();
    _question_no = 0;
    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text('Quiz'),
              content: Text('Your point = $_point'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'OK');
                  },
                  child: const Text('OK'),
                ),
              ],
            ));
  }

  void checkAnswer(String answer) {
    setState(() {
      if (answer == _questions[_question_no].answer) {
        _point += 100;
      }
      _question_no++;
      if (_question_no > _questions.length - 1) finishQuiz();

      _hitung = _initValue;
    });
  }

  startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _hitung--;
        if (_hitung == 0) {
          /*_timer.cancel();
          showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: const Text('Kuis'),
                    content: Text('Time is Up'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => [
                          Navigator.pop(context, 'OK'),
                        ],
                        child: const Text('OK'),
                      ),
                    ],
                  ));*/
          _question_no++;
          if (_question_no > _questions.length - 1) finishQuiz();
          ;
          _hitung = _initValue;
        }

        _jalan = true;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _hitung = _initValue;
    _questions.add(QuestionObj("Not a member of Avenger ", 'Ironman',
        'Spiderman', 'Thor', 'Hulk Hogan', 'Hulk Hogan'));
    _questions.add(QuestionObj("Not a member of Teletubbies", 'Dipsy',
        'Patrick', 'Laalaa', 'Poo', 'Patrick'));
    _questions.add(QuestionObj("Not a member of justice league", 'batman',
        'superman', 'flash', 'aquades', 'aquades'));

    startTimer();
  }

  @override
  void dispose() {
    // _timer.cancel();
    startTimer();
    _hitung = _initValue;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kuis'),
        ),
        body: Center(
            child: Column(
          children: [
            Divider(height: 30),
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 20.0,
              percent: 1 - (_hitung / _initValue),
              center: Text(formatTime(_hitung)),
              progressColor: Colors.red,
            ),
            // LinearPercentIndicator(
            //   center: Text(formatTime(_hitung)),
            //   width: MediaQuery.of(context).size.width,
            //   lineHeight: 20.0,
            //   percent: 1 - (_hitung / _initValue),
            //   backgroundColor: Colors.grey,
            //   progressColor: Colors.red,
            // ),
            // Text(
            //   formatTime(_hitung),
            //   style: TextStyle(fontSize: 25),
            // ),
            Divider(
              height: 30,
            ),
            Text(_questions[_question_no].narration),
            TextButton(
                onPressed: () {
                  checkAnswer(_questions[_question_no].option_a);
                },
                child: Text("A. " + _questions[_question_no].option_a)),
            TextButton(
                onPressed: () {
                  checkAnswer(_questions[_question_no].option_b);
                },
                child: Text("B. " + _questions[_question_no].option_b)),
            TextButton(
                onPressed: () {
                  checkAnswer(_questions[_question_no].option_c);
                },
                child: Text("C. " + _questions[_question_no].option_c)),
            TextButton(
                onPressed: () {
                  checkAnswer(_questions[_question_no].option_d);
                },
                child: Text("D. " + _questions[_question_no].option_d)),

            // ElevatedButton(
            //     onPressed: () {
            //       if (_jalan) {
            //         _timer.cancel();
            //         setState(() {
            //           _jalan = false;
            //         });
            //       } else {
            //         setState(() {
            //           _jalan = true;
            //         });

            //         startTimer();
            //       }
            //     },
            //     child: Text("stop")),
            // ElevatedButton(
            //     onPressed: () {
            //       // dispose();
            //     },
            //     child: Text("reset"))
          ],
        )));
  }
}
