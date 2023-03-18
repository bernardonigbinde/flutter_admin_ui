import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        border: Border.all(color: Colors.white24, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(defaultCornerRadius),
        ),
      ),
      child: Row(
        children: [
          Image.asset('images/profile_pic.png', height: 38,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('Bernard Onigbinde', ),
          ),
          Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white,),
        ],
      ),
    );
  }
}
