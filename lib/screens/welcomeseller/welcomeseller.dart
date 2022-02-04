import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:Love.Clothes/screens/loginseller/loginseller_screen.dart';
import 'package:Love.Clothes/screens/signupseller/signupseller_screen.dart';

Future navigateToLogInSellerMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInSellerMainScreen()));
}

Future navigateToSignUpSellerMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpSellerMainScreen()));
}

class WelcomeSellerPage extends StatelessWidget {
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
                              navigateToLogInSellerMainScreen(context);                          
                              },
                              
                              textColor: Colors.black,
                              color: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Text('SIGN IN'),                              
                             ),
                             SizedBox(
                             height: 20,
                             ),
                             RaisedButton(
                              onPressed: () {
                              navigateToSignUpSellerMainScreen(context);  //Edit here                        
                              },
                              textColor: Colors.black,
                              color: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Text('SIGN UP'),                              
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
