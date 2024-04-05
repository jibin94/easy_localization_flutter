import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color? iconColor;
  final IconData? icon;
  final String? image;
  final VoidCallback buttonAction;
  const CommonButton(
      {Key? key,
      required this.text,
      this.icon,
      this.image,
      required this.buttonColor,
      required this.buttonAction,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonAction,
      child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: buttonColor,
            boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: 1),
            ],
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 14,color: Colors.white),
          )),
    );
  }
}
