import 'package:flutter/material.dart';
import '../../models/shipping.dart';
import '../Shipping/shipping_viewmodel.dart';
import '../../screens/view.dart';
import 'widgets/custom_text_field.dart';

class ShippingEditorTile extends StatelessWidget {
  const ShippingEditorTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<ShippingMainViewmodel, Shipping>(
      selector: (_, vm) => vm.getShipping(index),
      builder: (_, vm, shipping, __) {
        print('Build ListTile $index');

        
        return ListTile(
          leading:CircleAvatar(
          backgroundImage: AssetImage( '${shipping.courier}'),
          ),
          title: CustomTextField(            
          
            initialValue: '${shipping.tracking}',
            onChanged: (value) {
              vm.getShipping(index).tracking = value;
            },
          ),          
          
          );
      },
        
     );

     
  }
}
