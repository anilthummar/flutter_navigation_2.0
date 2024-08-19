import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Function setFirstScreen;
  SecondPage({super.key, required this.setFirstScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: SizedBox(
        height: 400,
        child: Column(
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, RoutesName.SECOND_PAGE);

                  setFirstScreen(true);
                },
                child: const Text("NAVIGATE TO FIRST PAGE"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
