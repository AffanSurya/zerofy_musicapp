import 'package:flutter/material.dart';
import 'package:zerofy_musicapp/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  const BasicAppBar({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? const Text(''),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: context.isDarkMode
                    ? Colors.white.withOpacity(0.15)
                    : Colors.black.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 15,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
