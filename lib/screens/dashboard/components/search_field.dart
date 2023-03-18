import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      child: TextField(
        decoration: InputDecoration(
            fillColor: secondaryColor,
            filled: true,
            hintText: 'Search',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(defaultCornerRadius),
              ),
            ),
            suffixIcon: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  debugPrint('search');
                },
                child: Container(
                  margin: EdgeInsets.all(defaultPadding / 2),
                  padding: EdgeInsets.all(defaultPadding * 0.75),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(defaultCornerRadius),),
                  ),
                  child: SvgPicture.asset('icons/search.svg', color: Colors.white,),
                ),
              ),
            )),
      ),
    );
  }
}
