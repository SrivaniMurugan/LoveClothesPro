import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:Love.Clothes/screens/loginbuyer/loginbuyer_screen.dart';
import 'package:Love.Clothes/screens/welcomeseller/welcomeseller.dart';

Future navigateToLoginBuyerPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginBuyerScreen()));
}

Future navigateToWelcomeSellerPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeSellerPage()));
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: Center(
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 70),                   
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                            height: 50,
                            ),
                            RaisedButton(
                              onPressed: () {
                              navigateToWelcomeSellerPage(context);                          
                              },
                              
                              textColor: Colors.black,
                              color: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Text('SELLER'),                              
                             ),
                             SizedBox(
                             height: 20,
                             ),
                             RaisedButton(
                              onPressed: () {
                              navigateToLoginBuyerPage(context);  //Edit here                        
                              },
                              textColor: Colors.black,
                              color: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Text('BUYER'),                              
                             ),                                                     
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                
                              )),
                              
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
