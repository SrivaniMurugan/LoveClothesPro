import 'package:flutter/material.dart';

class SignupBuyerAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.topLeft,
            width: 200,
            height: 30,
            child: Column(
              children: [
                new Text(
                  "Sign Up Page",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
