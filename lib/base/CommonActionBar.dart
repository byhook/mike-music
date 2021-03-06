import 'package:flutter/material.dart';

/**
 * @anchor: andy
 * @date: 2019-01-24
 * @description: 通用的标题栏
 */
class CommonActionBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  CommonActionBar(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: IconButton(
              padding: const EdgeInsets.all(14.0),
              icon: Image.asset(
                  'images/back_white.png'),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
          backgroundColor: Color(0xFFCE3433),
          title: new Text(title),
          centerTitle: true,
        )
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

}