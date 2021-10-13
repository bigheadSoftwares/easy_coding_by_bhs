import 'package:big_head_softwares/big_head_softwares.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Coding example',

      /// To access [ThemeData] we generally use [Theme.of(context).primaryColor] or [Theme.of(context).textTheme.headline1]
      /// This whole code can be replaced by using [theme(context).primaryColor] or [textTheme(context).headline1] respectively
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          bodyText1: TextStyle(fontSize: 18),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Software example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// No need to call [MediaQuery.of(context).size.height] use [.screenHeight(context)]
            /// similarly for screen width use [.screenWidth(context)]
            CustomButton(
              onPressed: () => print(screenHeight(context)),
              buttonText: 'Screen Height',
            ),
            CustomButton(
              onPressed: () => print(screenWidth(context)),
              buttonText: 'Screen Width',
            ),

            /// to give space vertically you can use [.sizedBoxHeight(yourHeight)]
            sizedBoxHeight(20),

            /// Instead of using [Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2())] you can use [push(context,Screen2()])]
            CustomButton(
              onPressed: () => push(context, Screen2()),
              buttonText: 'Easy Navigation',
            ),
            sizedBoxHeight(80),
            Text(
              'Go to Plugin documentation for more awesome productivity shortcuts',
              style: textTheme(context).bodyText1,
              textAlign: TextAlign.center,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Screen2',
          style: textTheme(context).headline1,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  final void Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
