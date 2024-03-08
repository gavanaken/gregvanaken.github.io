import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'text_helpers.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greg Van Aken',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        useMaterial3: true,
        // colorScheme: ColorScheme.fromSeed(
        //     seedColor: BackgroundColors.blue, brightness: Brightness.light),
        scaffoldBackgroundColor: BackgroundColors.white,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 48,
              color: TextColors.darkgrey,
              fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 24, color: TextColors.darkgrey),
          displaySmall: TextStyle(fontSize: 20, color: TextColors.darkgrey),
          bodySmall: TextStyle(fontSize: 18, color: TextColors.darkgrey),
        ),
      ),
      home: const MyHomePage(title: 'Greg Van Aken'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to adjust the base font size based on the screen width
    double screenWidth = MediaQuery.of(context).size.width;
    double adjustedFontSize =
        screenWidth < 600 ? 1.0 : 1.5; // 1.5 times bigger for wider screens

    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            decoration: BoxDecoration(
              color: BackgroundColors
                  .white, // The background color of the container
              boxShadow: [
                BoxShadow(
                  color: BackgroundColors.grey
                      .withOpacity(0.8), // Shadow color with some transparency
                  spreadRadius: 10, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Row(), // Temporary, just allows the column to stretch.
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Software Engineer, Scientist, & Entrepreneur",
                        style: getScaledTextStyle(
                            context, Theme.of(context).textTheme.displayLarge),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "I'm building innovative solutions to the world's hardest problems.",
                        style: getScaledTextStyle(
                            context, Theme.of(context).textTheme.displayMedium),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  SvgPicture.asset(
                    "assets/about-me-avatar.svg",
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: getScaledTextStyle(
                          context, Theme.of(context).textTheme.displaySmall),
                      children: const [
                        TextSpan(
                          text:
                              "Natural leader and passionate problem solver. ",
                        ),
                        TextSpan(
                            text: "Coffee Chat ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "enthusiast.",
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: getScaledTextStyle(
                          context, Theme.of(context).textTheme.displaySmall),
                      children: const [
                        TextSpan(
                          text: "Currently hanging out in  ",
                        ),
                        TextSpan(
                            text: "Boston, MA ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "while I pursue my MBA.",
                        ),
                      ],
                    ),
                  )
                ])),
      ),
    );
  }
}