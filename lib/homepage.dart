import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/mybutton.dart';
import 'package:walletapp/util/mycard.dart';
import 'package:walletapp/util/mylisttile.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[350],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      size: 40,
                    )),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 40,
                ))
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                    'My',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Cards',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ]),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey[500], shape: BoxShape.circle),
                    child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                mycard(
                  balance: 2524.58,
                  cardNumber: 451258,
                  expiryMonth: 1,
                  expiryYear: 27,
                  color: Colors.deepPurple[400],
                ),
                mycard(
                  balance: 3512.20,
                  cardNumber: 452178,
                  expiryMonth: 11,
                  expiryYear: 26,
                  color: Colors.blue[400],
                ),
                mycard(
                  balance: 6152.20,
                  cardNumber: 568975,
                  expiryMonth: 8,
                  expiryYear: 24,
                  color: Colors.green[400],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mybutton(
                      iconimagepath: 'assets/images/send-money.png',
                      buttonText: 'Send'),
                  mybutton(
                      iconimagepath: 'assets/images/credit-card.png',
                      buttonText: 'Pay'),
                  mybutton(
                      iconimagepath: 'assets/images/invoice.png',
                      buttonText: 'Bill'),
                ]),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                mylisttile(
                    iconimagePath: 'assets/images/analysis.png',
                    tileSubTitle: 'Payments and Icons',
                    tileTitle: 'Analysis'),
                SizedBox(height: 15),
                mylisttile(
                    iconimagePath: 'assets/images/transaction.png',
                    tileSubTitle: ' payments',
                    tileTitle: 'Transactions')
              ],
            ),
          ),
          // SizedBox(
          //   height: 100,
          // )
        ],
      )),
    );
  }
}
