import 'package:flutter/material.dart';
import 'package:navigation_2o_web/first_page.dart';
import 'package:navigation_2o_web/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isFirstScreen = false;

  setFirstScreen(screenValue) {
    setState(() {
      isFirstScreen = screenValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
           MaterialPage(
            child: FirstPage(setFirstScreen: setFirstScreen),
          ),
          if (isFirstScreen == false)  MaterialPage(child: SecondPage(setFirstScreen: setFirstScreen,)),
        ],
        onPopPage: (route, result) {
          bool isPopStatus =route.didPop(result);
          if(isPopStatus== true) setFirstScreen(true);
          return isPopStatus;
        },
      ),
      // initialRoute: '/',
      //   routes: {
      //   '/':(context)=>const HomePage(),
      //   '/first':(context)=>const FirstPage(),
      //   '/second':(context)=>const SecondPage(),
      //   },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BottomNavigationBar Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(context) =>const FirstPage()));
                  Navigator.pushNamed(context, '/first');
                },
                child: const Text("Working with Navigation 1.0"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/contact');
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text("Working with Navigation 2.0"),
              ),
            ],
          ),
        ));
  }
}
