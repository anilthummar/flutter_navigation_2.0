import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  final Function setFirstScreen;

  const FirstPage({required this.setFirstScreen});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: SizedBox(
        // height: 400,
        child: Column(
          children: [
             Center(
              child: TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, RoutesName.SECOND_PAGE);

                    // (Router.of(context).routerDelegate as MyRouterDelegate).goToLastPage();

                    // Navigator.pop(context);

                    setFirstScreen(false);


                  },
                  child:  const Text("NAVIGATE TO SECOND PAGE")),
            ),

          ],
        ),
      ),
    );
  }
}
