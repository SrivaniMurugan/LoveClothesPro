import 'package:Love.Clothes/screens/homepage/homepage_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

Future navigateToHomePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsClothesScreen()));
}

class SignUpPage extends StatelessWidget {
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
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                             TextInput(
                              icon: Icons.person,
                              hint: 'First Name',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                             TextInput(
                              icon: Icons.person,
                              hint: 'Last Name',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              icon: Icons.email_rounded,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock_rounded,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),

                                RaisedButton(
                              onPressed: () {
                              navigateToHomePage(context);                          
                              },
                              
                              textColor: Colors.black,
                              color: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Text('Login'),                              
                             ),                                                     
                            SizedBox(
                              height: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(color: Colors.white, width: 1),
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
