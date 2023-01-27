import 'package:flutter/material.dart';
import 'package:panel_admin/screen/main/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required Null Function() press,
    required String svgSrc,
    required String title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }

  // Drawer SideMenu() {
  //   return Drawer(
  //             child: SingleChildScrollView(
  //               child: Column(
  //                 children: [
  //                   DrawerHeader(
  //                     child: Image.asset("assets/images/logo.png"),
  //                   ),
  //                   DrawerListTile(
  //                     title: 'dashboard',
  //                     svgSrc: 'icons/menu_dashbord.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Transaction',
  //                     svgSrc: 'icons/menu_tran.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Documents',
  //                     svgSrc: 'icons/menu_doc.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Store',
  //                     svgSrc: 'icons/menu_store.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Notification',
  //                     svgSrc: 'icons/menu_notification.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Profile',
  //                     svgSrc: 'icons/menu_profile.svg',
  //                     press: () {},
  //                   ),
  //                   DrawerListTile(
  //                     title: 'Settings',
  //                     svgSrc: 'icons/menu_setting.svg',
  //                     press: () {},
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  // }

  // ListTile DrawerListTile(
  //     {required Null Function() press,
  //     required String svgSrc,
  //     required String title}) {
  //   return ListTile(
  //     onTap: press,
  //     horizontalTitleGap: 0,
  //     leading: SvgPicture.asset(
  //       svgSrc,
  //       color: Colors.white54,
  //       height: 16,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(
  //         color: Colors.white54,
  //       ),
  //     ),
  //   );
  // }
}
