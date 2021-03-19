import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_index_bar/home_screen_widgets/scrollable_colorList.dart';
import 'package:scrollable_index_bar/view_model/colors_navigation_provider.dart';

import 'home_screen_widgets/color_index_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChangeNotifierProvider<NavigatorProvider>(
          create: (_) => NavigatorProvider(),
          child: Column(
            children: [
              SizedBox(height: 60.0,child: ColorIndexBar()),
              Flexible(child: ScrollableColors()),
            ],
          ),
        ),
      ),
    );
  }
}
