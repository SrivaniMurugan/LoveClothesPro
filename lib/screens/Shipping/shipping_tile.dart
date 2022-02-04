import 'package:flutter/material.dart';
import '../../models/shipping.dart';
import '../Shipping/shipping_viewmodel.dart';
import '../../screens/view.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 800.0,
        
    );
  }
}

class ShippingTile extends StatelessWidget {
  const ShippingTile(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<ShippingMainViewmodel, Shipping>(
     
      selector: (_, vm) => vm.getShipping(index),
      builder: (_, vm, shipping, ___) {
        print('Build ListTile $index');
     return ListTile(
       title: Row(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Card(
                          child: Container(
                            height: 250,
                            width: 460,
                            child: Column(children: <Widget>[
                              Container(
                                height: 200,
                                width: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('${shipping.courier}'),
                                  ),
                                ),
                              ),
      RaisedButton(
            onPressed: () {
                   vm.editShipping(index);
                   //vm.getShipping(index);
            },           
            textColor: Colors.black87,
            color: Colors.yellowAccent,
            
            splashColor: Colors.orange[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),            
            child: Text(
              '${shipping.tracking}',
              style:TextStyle(
                fontSize: 15.0,
                fontStyle: FontStyle.italic, 
              ),
              ),
          ),
                              ],
                              
                                ),
                                
                          ),
                          
                        ),

                      ],
                    ),
                    
                  ],
                  
                  ),
                  
            ],
          ),
           
          );
  });
}
}