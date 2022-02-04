import 'package:flutter/material.dart';
import '../view.dart';
import 'package:Love.Clothes/screens/loginseller/loginseller_screen.dart';
import '../../models/loginseller.dart';
import '../loginseller/loginseller_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';

Future navigateToLogInSellerMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInSellerMainScreen()));
}

class SignUpSellerTile extends StatelessWidget {
  const SignUpSellerTile(this.index);

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
                  "SIGNUP",
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
                  initialValue: '''${seller.name}''',
                  onChanged: (value) {
                    vm.getLogInSeller(index).name = value;
                  },
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
                       navigateToLogInSellerMainScreen(context);
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
                  ],
                )
              ],
            ),
          ]);
        });
  }
}
