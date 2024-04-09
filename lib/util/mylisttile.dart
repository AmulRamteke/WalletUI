import 'package:flutter/material.dart';

class mylisttile extends StatelessWidget {
  final String iconimagePath;
  final String tileTitle;
  final String tileSubTitle;

  const mylisttile({
    Key? key,
    required this.iconimagePath,
    required this.tileSubTitle,
    required this.tileTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          height: 100,
          padding: EdgeInsets.all(12),
          child: Image.asset(iconimagePath),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              tileSubTitle,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
