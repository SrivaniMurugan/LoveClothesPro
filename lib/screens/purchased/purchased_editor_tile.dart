// import 'dart:html';

import 'package:flutter/material.dart';

import '../../models/purchased.dart';
import 'purchased_viewmodel.dart';
import '../view.dart';
import 'widgets/custom_text_field.dart';
import '../../screens/homepage/homepage_screen.dart';

Future navigateToHomepageScreen(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => DetailsClothesScreen()));
}

class PurchasedEditorTile extends StatelessWidget {
  final int id;
  const PurchasedEditorTile(this.id);

  @override
  Widget build(BuildContext context) {
    return SelectorView<PurchasedViewmodel, Purchased>(
      selector: (_, vm) => vm.getPurchased(id),
      builder: (context, vm, purchased, __) {
        return Container(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Please enter the information below to confirm the purchase",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Cloth Information",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Cloth Code:",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            CustomTextField(
              initialValue: '''${purchased.clothCode}''',
              onChanged: (value) {
                vm.getPurchased(id).clothCode = value;
              },
            ),
            Text(
              "Cloth Price:",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
            ),
            CustomTextField(
              initialValue: '''${purchased.price}''',
              onChanged: (value) {
                vm.getPurchased(id).price = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Your Information",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Your Name: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            CustomTextField(
              initialValue: '''${purchased.buyerName}''',
              onChanged: (value) {
                vm.getPurchased(id).buyerName = value;
              },
            ),
            Text(
              "Your Phone Number: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            CustomTextField(
              initialValue: '''${purchased.buyerPhoneNo}''',
              onChanged: (value) {
                vm.getPurchased(id).buyerPhoneNo = value;
              },
            ),
            Text(
              "Your Address:",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            CustomTextField(
              initialValue: '''${purchased.buyerAddress}''',
              onChanged: (value) {
                vm.getPurchased(id).buyerAddress = value;
              },
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {
                navigateToHomepageScreen(context);
              },
              textColor: Colors.black,
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text('Submit'),
            ),
          ],
        ));
      },
    );
  }
}
