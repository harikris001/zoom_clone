import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome',
          body: 'Welcome to Zoom, Powerful video conference app',
          image: Center(child: Image.asset('images/welcome.jpg')),
        ),
        PageViewModel(
          title: 'Create Meetings',
          body: 'Collaborate and join with Peers',
          image: Center(child: Image.asset('images/meetings.png')),
        ),
        PageViewModel(
          title: 'Large Meetings',
          body: 'More people means more ideas, keep on creating',
          image: Center(child: Image.asset('images/large meetings.jpg')),
        ),
        PageViewModel(
          title: 'Safe, Secure & Private',
          body: 'We value your meetings, data and privacy. So sit back and Relax.',
          image: Center(child: Image.asset('images/safe_secure.png',)),
        ),
      ],
      onDone: () {
        print("DONE");
      },
      onSkip: () {
        print('SKIP');
      },
      showSkipButton: true,
      showNextButton: false,
      skip: Icon(Icons.skip_next),
      done: Text('Done'),
    );
  }
}