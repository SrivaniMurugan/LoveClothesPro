import 'package:flutter/material.dart';
import '../../models/profileseller.dart';
import '../ProfileSeller/profileseller_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';
import '../../screens/Shipping/shipping_screen.dart';
import '../../screens/addPro/addPro_screen.dart';

Future navigateToShippingMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingMainScreen()));
}

Future navigateToAddProMainScreen(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => AddProMainScreen()));
}

class ProfileSellerEditorTile extends StatelessWidget {
  const ProfileSellerEditorTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<ProfileSellerMainViewmodel, ProfileSeller>(
      selector: (_, vm) => vm.getProfileSeller(index),
      builder: (_, vm, profileseller, __) {
        print('Build ListTile $index');
        
        return ListTile(
          title: Center(
            child: Column(children: [
              Container(
                height: 200,
                                width: 170,
                                 child:Icon(
                                   Icons.person, 
                                   size: 170,
              
                                     ),
                                     
              ),
           
            CustomTextField(
            
            initialValue: '''${profileseller.name}''',
            onChanged: (value) {
              vm.getProfileSeller(index).name = value;
            },
          ),

          CustomTextField(
          
          initialValue: ''' ${profileseller.about}''',
            onChanged: (value) {
              vm.getProfileSeller(index).about = value;
            }
          ),

          CustomTextField(
            initialValue: '''${profileseller.phone}''',
            onChanged: (value) {
              vm.getProfileSeller(index).phone = value;
            }
          ),

          
         
            ]
        )
          )
          );
      },
        
     );
     
  }
}
