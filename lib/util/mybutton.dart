import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String iconimagepath;
  final String buttonText;

  const mybutton({
    Key? key,
    required this.iconimagepath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 90,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 20,
              )
            ]),
        child: Center(
          child: Image.asset(iconimagepath),
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Text(
        buttonText,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[700]),
      )
    ]);
  }
}
