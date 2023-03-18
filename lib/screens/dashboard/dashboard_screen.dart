import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    height: 500,
                  ),
                  flex: 5,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  child: StorageDetails(),
                  flex: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}