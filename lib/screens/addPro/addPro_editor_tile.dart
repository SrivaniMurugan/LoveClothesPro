//TODO Complete the implementation of this class
//import 'dart:math';
import 'package:flutter/material.dart';
import '../../models/addPro.dart';
import '../addPro/addPro_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';
import '../../screens/addPro/addPro_successful.dart';

Future navigateToAddProSuccessful(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddProSuccessful()));
}

class AddProEditorTile extends StatelessWidget {
  const AddProEditorTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<AddProMainViewmodel, AddPro>(
      selector: (_, vm) => vm.getaddPro(index),
      builder: (_, vm, addPro, __) {
        print('Build ListTile $index');

        return ListTile(
            title: Center(
                child: Column(children: [
          Container(
            height: 200,
            width: 170,
            child: CircleAvatar(
              backgroundImage: AssetImage( '${addPro.image}'),
              //size: 170,
            ),
            
          ),
          CustomTextField(
            initialValue: '''Name: ${addPro.name}''',
            onChanged: (value) {
              vm.getaddPro(index).name = value;
            },
          ),
          CustomTextField(
              initialValue: '''Description: ${addPro.about}''',
              onChanged: (value) {
                vm.getaddPro(index).about = value;
              }),
          CustomTextField(
              initialValue: '''Price: ${addPro.price}''',
              onChanged: (value) {
                vm.getaddPro(index).price = value;
              }),
          RaisedButton(
            onPressed: () {
                   navigateToAddProSuccessful(context);
            },   
            color: Colors.yellow,
            child: Column(children: [
                  Text(
                    'PUBLISH',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            
          ),
        ]),
            )
            );  
          },
    );
  }
}
