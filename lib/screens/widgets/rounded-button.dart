import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonText, Map onTap, Null Function() onPressed,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,
            
          ),
        ),
      ),
    );
  }
}
