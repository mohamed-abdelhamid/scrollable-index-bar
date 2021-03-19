import 'package:flutter/material.dart';
import 'package:scrollable_index_bar/color_model/color_palette.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_index_bar/view_model/colors_navigation_provider.dart';

class ScrollableColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        Provider.of<NavigatorProvider>(context,listen: false).navigateToTab(scrollInfo);
        return true ; // it requires to return true for sake of scrolling
      },
      child: ListView.builder(
          controller: Provider.of<NavigatorProvider>(context).paletteController,
          itemCount: ColorPalette.palette.length,
          itemBuilder: (ctx, int index) => SizedBox(
                width: double.infinity,
                height: 150.0,
                child: Card(
                  borderOnForeground: true,
                  color: ColorPalette.palette[index].color,
                ),
              ),
      ),
    );
  }
}
