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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(' Software example'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            /// No need to call [MediaQuery.of(context).size.height] use [.screenHeight(context)]
            /// similarly for screen width use [.screenWidth(context)]
            CustomTextButton(
              onTap: () => print(screenHeight(context)),
              text: 'Screen Height',
              radius: 10,
            ),
            CustomTextButton(
              onTap: () => print(screenWidth(context)),
              text: 'Screen Width',
              radius: 10,
            ),

            /// to give space vertically you can use [.sizedBoxHeight(yourHeight)]
            sizedBoxHeight(20),
            CustomListTile(
              title: Heading1('CustomListTile'),
              subtitle: SubHeading2(
                  'Use custom list tile to get finer control over ListTile widget'),
            ),
            sizedBoxHeight(20),
            CustomTextField(
              controller: TextEditingController(),
              hintText:
                  'Use CustomTextField to easily use each functionallity of TextFormField',
              borderColor: Colors.black,
              focusBorderColor: Colors.black,
              cursorColor: Colors.black,
            ),
            sizedBoxHeight(20),

            /// Instead of using [Navigator.push(context,MaterialPageRoute(builder: (context)=>Screen2())] you can use [push(context,Screen2()])]
            CustomTextButton(
              onTap: () => push(context, Screen2()),
              text: 'Easy Navigation',
              radius: 10,
            ),
            sizedBoxHeight(20),
            RoundContainer(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: SubHeading2('RoundContainer with neumorphism'),
            ).neumorphism(),
            sizedBoxHeight(20),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: radius(10),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black87.withOpacity(0.15),
                      BlendMode.darken,
                    ),
                    child: Image.network(
                      'https://img.freepik.com/free-vector/abstract-background_53876-43362.jpg?size=626&ext=jpg',
                      height: 200,
                      width: screenWidth(context),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                RoundContainer(
                  height: 160,
                  width: screenWidth(context) * 0.6,
                  hPadding: 10,
                  alignment: Alignment.center,
                  child: SubHeading2(
                    'roundContainer with glassmorphism'.capitalize(),
                    color: Colors.black.withOpacity(0.7),
                    centerText: true,
                  ),
                ).glassmorphism(borderRadius: 10),
              ],
            ),
            sizedBoxHeight(20),
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
        child: Heading1('Screen2'),
      ),
    );
  }
}
