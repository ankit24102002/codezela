import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/color.dart';
import 'package:login_flutter_app/src/constants/image_striing.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/repository/authentication_repository.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title:
          Text(tAppName, style: Theme.of(context).textTheme.headlineMedium),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              icon: const Image(image: AssetImage(tUserProfileImage))),
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(55);
}