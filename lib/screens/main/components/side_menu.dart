import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('images/logo.png'),
            ),
            DrawerListTile(title: 'Dashboard', iconAssetUrl: 'icons/menu_dashboard.svg', onTap: () {},),
            DrawerListTile(title: 'Transaction', iconAssetUrl: 'icons/menu_transaction.svg', onTap: () {},),
            DrawerListTile(title: 'Task', iconAssetUrl: 'icons/menu_task.svg', onTap: () {},),
            DrawerListTile(title: 'Documents', iconAssetUrl: 'icons/menu_document.svg', onTap: () {},),
            DrawerListTile(title: 'Store', iconAssetUrl: 'icons/menu_store.svg', onTap: () {},),
            DrawerListTile(title: 'Notification', iconAssetUrl: 'icons/menu_notification.svg', onTap: () {},),
            DrawerListTile(title: 'Profile', iconAssetUrl: 'icons/menu_profile.svg', onTap: () {},),
            DrawerListTile(title: 'Settings', iconAssetUrl: 'icons/menu_setting.svg', onTap: () {},),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, iconAssetUrl;
  final VoidCallback onTap;
  
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.iconAssetUrl,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      onTap: onTap,
      leading: SvgPicture.asset(
        iconAssetUrl,
        color: Colors.white,
        height: drawerListIconSize,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
