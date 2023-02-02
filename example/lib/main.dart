import 'package:chrome_tab_bar/chrome_tab_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ChromeTabBar(
        tabSelectedColor: Colors.white,
        backgroundColor: Colors.blue,
        tabsList: const [
          SizedBox(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
        tabText: const [
          "Tab One",
          "Tab Two",
          "Tab Three",
          "Tab Four",
          "Tab Five",
        ],
      ),
    );
  }
}
