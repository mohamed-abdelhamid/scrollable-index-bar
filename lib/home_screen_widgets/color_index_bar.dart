import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_index_bar/color_model/color_palette.dart';
import 'package:scrollable_index_bar/home_screen_widgets/color_tab.dart';
import 'package:scrollable_index_bar/view_model/colors_navigation_provider.dart';

class ColorIndexBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // set screen width inside provider for navigation
    Provider.of<NavigatorProvider>(context, listen: false).screenWidth =
        MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: Colors.black45, width: 1.0),
      ),
      child: ListView.builder(
        controller: Provider.of<NavigatorProvider>(context).barController,
        itemCount: colorCategories.values.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, int index) =>
            Provider.of<NavigatorProvider>(context).selectedTabIndex == index
                ? Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ColorTab(
                      index: index,
                      isSelected: true,
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: ColorTab(
                      index: index,
                      isSelected: false,
                    ),
                  ),
      ),
    );
  }
}
