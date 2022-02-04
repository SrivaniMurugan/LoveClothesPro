import 'package:Love.Clothes/screens/widgets/background-image.dart';
import 'package:flutter/material.dart';
import '../view.dart';
import 'signupbuyer_viewmodel.dart';
import '../../screens/loginbuyer/loginbuyer_screen.dart';
import '../../screens/welcome/welcome_buyer.dart';
import '../../models/buyer.dart';
import 'widgets/custom_text_field.dart';

Future navigateToLoginBuyerScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginBuyerScreen()));
}

Future navigateToWelcomeBuyerScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => WelcomeBuyerPage()));
}

class SignupBuyerListTile extends StatelessWidget {
  const SignupBuyerListTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<SignupBuyerViewmodel, Buyer>(
        selector: (_, vm) => vm.getBuyer(index),
        builder: (_, vm, buyer, __) {
          print('Build ListTile $index');

          return Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "SIGN UP",
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
                  initialValue: '''${buyer.name}''',
                  onChanged: (value) {
                    vm.getBuyer(index).name = value;
                    //vm.getProfile(index).about = value;
                    // vm.getProfile(index).phone = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  initialValue: '''${buyer.email}''',
                  onChanged: (value) {
                    vm.getBuyer(index).email = value;
                    //vm.getProfile(index).about = value;
                    // vm.getProfile(index).phone = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                    initialValue: ''' ${buyer.password}''',
                    onChanged: (value) {
                      vm.getBuyer(index).password = value;
                      //vm.getProfile(index).about = value;
                      // vm.getProfile(index).phone = value;
                    }),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      onPressed: () {
                        navigateToLoginBuyerScreen(context);
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
                        navigateToWelcomeBuyerScreen(context);
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
