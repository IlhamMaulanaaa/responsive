import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff0E121A);
    Color secondColor = Color(0xffE5FFE6);
    Color trithColor = Color(0xffD9D9D9);
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        leading: Icon(Icons.search),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.keyboard_control_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        centerTitle: true,
        title: Text('M O B I L E'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // youtube video
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    color: trithColor,
                    border: Border.all(
                      width: 3,
                      color: Colors.yellow
                    )
                  ),
                  // color: trithColor ,
                ),
              ),
            ),

            // comment section & recommended videos
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: secondColor,
                      height: 120,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
