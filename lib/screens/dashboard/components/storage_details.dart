import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultCornerRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Chart(),
          StorageInfoCard(title: 'Documents', fileSize: '1.3GB', iconSvgUrl: 'icons/documents.svg', numberOfFiles: 1329),
          StorageInfoCard(title: 'Media Files', fileSize: '15.3GB', iconSvgUrl: 'icons/media.svg', numberOfFiles: 1328),
          StorageInfoCard(title: 'Other Files', fileSize: '1.3GB', iconSvgUrl: 'icons/folder.svg', numberOfFiles: 1328),
          StorageInfoCard(title: 'Unknown', fileSize: '1.3GB', iconSvgUrl: 'icons/unknown.svg', numberOfFiles: 140),
        ],
      ),
    );
  }
}