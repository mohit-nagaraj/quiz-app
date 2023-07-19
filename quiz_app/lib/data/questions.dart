import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'Combining widgets in code',
    'Combining widgets in a visual editor',
    'Defining widgets in config',
    'By using XCode/Android Studio',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI, dependless on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you use more often:',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'Changing data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest Widget is updated',
      'Any nested Widgets are updated',
    ],
  ),
  QuizQuestion(
    'Method that updates data in StatefulWidgets?',
    [
      'setState()',
      'updateData()',
      'updateUI()',
      'updateState()',
    ],
  ),
];
