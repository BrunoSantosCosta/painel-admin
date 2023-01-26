import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: 'dashboard',
              svgSrc: 'icons/menu_dashbord.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'icons/menu_tran.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgSrc: 'icons/menu_doc.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'icons/menu_store.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'icons/menu_notification.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'icons/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'icons/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });
  final String title, svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
