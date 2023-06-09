import 'package:flutter/material.dart';

import 'profile_card.dart';
import 'search_field.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard', style: Theme.of(context).textTheme.titleLarge,),
        Spacer(flex: 2,),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}