import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_index_bar/color_model/color_palette.dart';
import 'package:scrollable_index_bar/constants/text_styles.dart';
import 'package:scrollable_index_bar/view_model/colors_navigation_provider.dart';

class ColorTab extends StatelessWidget {
  final int index;
  final bool isSelected;
  const ColorTab({this.index, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=> Provider.of<NavigatorProvider>(context,listen: false).navigateToColor(this.index),
      child: Center(
          child: Text(
            colorCategories.values[index].toShortString(),
            style: isSelected ? kTabBar_style.copyWith(color: Colors.blue) : kTabBar_style,
            // selected tab : true => color is blue , else : color is black
          )
      ),
    );
  }
}
