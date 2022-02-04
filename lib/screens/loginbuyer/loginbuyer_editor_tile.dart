import 'package:flutter/material.dart';
import '../view.dart';
import 'loginbuyer_viewmodel.dart';
import '../../screens/homepage/homepage_screen.dart';
import '../../models/buyer.dart';
import 'widgets/custom_text_field.dart';

Future navigateToHomepageScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsClothesScreen()));
}


class LoginBuyerEditorTile extends StatelessWidget {
  const LoginBuyerEditorTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<LoginBuyerViewmodel, Buyer>(
        selector: (_, vm) => vm.getBuyer(index),
        builder: (_, vm, buyer, __) {
          print('Build ListTile $index');

          return Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTextField(
                  initialValue: '''${buyer.email}''',
                  onChanged: (value) {
                    vm.getBuyer(index).email = value;
                    //vm.getProfile(index).about = value;
                    // vm.getProfile(index).phone = value;
                  },
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
                        navigateToHomepageScreen(context);
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
                        //    navigateToWelcomePage(context);
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
