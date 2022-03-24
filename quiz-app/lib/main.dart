import 'package:flutter/material.dart';
import 'package:quiz_app/Question.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final _questions =
      List.generate(10, (index) => String.fromCharCode(index + 65));
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing Flutter App'),
        ),
        body: Column(
          children: [
            Question(_questions[_index % 10]),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 1')),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
