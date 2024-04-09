import 'package:flutter/material.dart';

class mycard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const mycard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.color,
    required this.expiryMonth,
    required this.expiryYear,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(26)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Image.asset(
                    'assets/images/card.png',
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$ ' + balance.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardNumber.toString(),
                      style: TextStyle(color: Colors.white)),
                  Text(expiryMonth.toString() + '/' + expiryYear.toString(),
                      style: TextStyle(color: Colors.white)),
                ],
              )
            ]),
      ),
    );
  }
}
