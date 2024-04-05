import 'package:easy_localization_flutter/common_button.dart';
import 'package:easy_localization_flutter/second_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CommonButton(
                        text: 'Switch to English',
                        buttonColor: Colors.black,
                        buttonAction: () {
                          context.setLocale(Locale('en', 'US'));
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CommonButton(
                        text: 'Switch to Malayalam',
                        buttonColor: Colors.black,
                        buttonAction: () {
                          context.setLocale(Locale('ml', 'IN'));
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CommonButton(
                        text: 'Switch to Hindi',
                        buttonColor: Colors.black,
                        buttonAction: () {
                          context.setLocale(Locale('hi', 'IN'));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("hello".tr().toString()),
                Text("text1".tr().toString()),
                Text("text2".tr().toString(), textAlign: TextAlign.justify),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondScreen()));
                  },
                  child: Text(
                    "Next page",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
