import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class futureAndStream extends StatefulWidget {
  const futureAndStream({super.key});

  @override
  State<futureAndStream> createState() => _futureAndStreamState();
}

class _futureAndStreamState extends State<futureAndStream> {
  @override
  int counter = 0;
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + number;
  }

  Stream<int> StreamCounter(int counter) async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      counter++;
      yield counter;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
              future: futureCounter(10),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Text(
                    "Future: ${snapshot.data.toString()}",
                    style: TextStyle(fontSize: 35),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
          StreamBuilder(
              stream: StreamCounter(0),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    "Stream: ${snapshot.data.toString()}",
                    style: TextStyle(fontSize: 35),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ],
      ),
    ));
  }
}
