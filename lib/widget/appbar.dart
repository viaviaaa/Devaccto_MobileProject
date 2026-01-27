import 'package:flutter/material.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget{
  const appbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Color(0xFF5D866C),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text('Welcome Back!'),
                      Text('User Name'),
                    ],
                  ),
                ),
                Icon(Icons.account_circle),
              ],
            ),
          );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.0);
}