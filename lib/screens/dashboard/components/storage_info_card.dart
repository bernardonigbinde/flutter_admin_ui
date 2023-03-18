import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String title, iconSvgUrl, fileSize;
  final int numberOfFiles;

  const StorageInfoCard({
    Key key,
    @required this.title,
    @required this.iconSvgUrl,
    @required this.fileSize,
    @required this.numberOfFiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor.withOpacity(0.15),
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(defaultCornerRadius),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            iconSvgUrl,
            height: 20,
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    '$numberOfFiles Files',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodySmall.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(fileSize),
        ],
      ),
    );
  }
}
