// ignore_for_file: file_names, prefer_const_constructors
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          globalFooter: SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                ),
                onPressed: () => _onIntroEnd(context),
                child: Text('Let\s go right away !')),
          ),
          pages: [
            PageViewModel(
              title: 'I read a book',
              body:
                  'A good bookshop is just a genteel Black Hole that knows how to read. \n "Terry Pratchett"',
              image: Image.asset(
                'assets/img_1.png',
              ),
              decoration: PageDecoration(
                imagePadding: EdgeInsets.only(top: 30.0),
                pageColor: Colors.white,
                bodyAlignment: Alignment.center,
                titleTextStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                bodyTextStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
            ),
            PageViewModel(
              title: 'I love reading a book',
              body:
                  'There is more treasure in books than in all the pirate’s loot on Treasure Island \n "Walt Disney"',
              image: Image.asset('assets/img_2.png'),
              decoration: PageDecoration(
                pageColor: Colors.white,
                bodyAlignment: Alignment.center,
                titleTextStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                bodyTextStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
            ),
            PageViewModel(
              title: 'Have a book',
              body:
                  'Sleep is good, he said, and books are better.\n "George R.R. Martin"',
              image: Image.asset('assets/img_3.png'),
              decoration: PageDecoration(
                pageColor: Colors.white,
                bodyAlignment: Alignment.center,
                titleTextStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                bodyTextStyle: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
            ),
          ],
          onDone: () => _onIntroEnd(context),
          showSkipButton: true,
          skipFlex: 0,
          nextFlex: 0,
          skip: Text(
            'skip',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          next: Icon(
            Icons.arrow_forward,
            size: 25,
            color: Colors.black,
          ),
          done: Text(
            'Done',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
          controlsMargin: EdgeInsets.all(8),
          dotsContainerDecorator: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)))),
          dotsDecorator: DotsDecorator(
            activeSize: Size(20.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            size: Size(10.0, 10.0),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
