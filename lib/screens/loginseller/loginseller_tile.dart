import 'package:flutter/material.dart';
import '../view.dart';
import 'loginseller_viewmodel.dart';
import 'package:Love.Clothes/screens/ProfileSeller/profileseller_screen.dart';
import 'package:Love.Clothes/screens/welcomeseller/welcomeseller.dart';
import '../../models/loginseller.dart';
import '../loginseller/loginseller_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';

Future navigateToProfileMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSellerMainScreen()));
}

Future navigateToWelcomeSellerPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeSellerPage()));
}

class LogInSellerTile extends StatelessWidget {
  const LogInSellerTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<LogInSellerMainViewmodel, LogInSeller>(
        selector: (_, vm) => vm.getLogInSeller(index),
        builder: (_, vm, seller, __) {
          print('Build ListTile $index');

          return Stack(children: [
     
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.yellow.shade900,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Please enter your information",
                  style: TextStyle(
                      color: Colors.yellow.shade900,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  initialValue: '''${seller.email}''',
                  onChanged: (value) {
                    vm.getLogInSeller(index).email = value;
                  },
                ),
                CustomTextField(
                    initialValue: ''' ${seller.password}''',
                    onChanged: (value) {
                      vm.getLogInSeller(index).password = value;
                    }),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      onPressed: () {
                       navigateToProfileMainScreen(context);
                      },
                      textColor: Colors.black,
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('Login'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                          navigateToWelcomeSellerPage(context);
                      },
                      textColor: Colors.black,
                      color: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('Back'),
                    ),
                  ],
                )
              ],
            ),
          ]);
        });
  }
}
