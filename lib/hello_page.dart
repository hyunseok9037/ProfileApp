import 'package:flutter/material.dart';

class Hellopage extends StatefulWidget {


  Hellopage({Key? key}) : super(key: key);

  @override
  State<Hellopage> createState() => _HellopageState();
}

class _HellopageState extends State<Hellopage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    print("나 또 실행돼?");
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Hello ${num}",
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    num++;
                  });
                  print("num : ${num}");
                },
                child: Text("변경", style: TextStyle(fontSize: 50)))
          ],
        ),
      )
    );
  }
}

