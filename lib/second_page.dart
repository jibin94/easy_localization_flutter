import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello".tr().toString()),
              Text("text1".tr().toString()),
              Text("text2".tr().toString(),textAlign: TextAlign.justify),
              SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () {
                  context.setLocale(Locale('en', 'US'));
                },
                child: Text("Switch to English"),
              ),
              SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () {
                  context.setLocale(Locale('ml', 'IN'));
                },
                child: Text("Switch to Malayalam"),
              ),
              SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () {
                  context.setLocale(Locale('hi', 'IN'));
                },
                child: Text("Switch to Hindi"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
