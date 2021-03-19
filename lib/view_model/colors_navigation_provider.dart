import 'package:flutter/cupertino.dart';
import 'package:scrollable_index_bar/color_model/color_palette.dart';
import 'package:scrollable_index_bar/view_model/navigation_indicator.dart';

class NavigatorProvider extends ChangeNotifier{

  int selectedTabIndex = 0 ; // index of selected color tab
  int _prevSelectedIndex = 0 ; //index of last selected color tab
  double screenWidth = 450.0;
  final ScrollController barController = ScrollController(); // controller of bar scrolling
  final ScrollController paletteController = ScrollController(); // controller of palette scrolling


  // will get triggered when user clicks on one of the tabs
  // will navigate the palette to the color he clicked on
  void navigateToColor(int index){
    // change current selected tab index to the new index
    this.selectedTabIndex = index;

    // instantiate my indicator to calculate offsets for each color
    // this will trigger the constructor only once because of the singleton applied
    // we do this to know where exactly to navigate to per each color
    NavigationIndicator indicator = NavigationIndicator();

    paletteController.animateTo(
        indicator.getColorOffsets(index) * 150.0 , // 150 is the height of the color card
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
    );
    notifyListeners();
  }


  // will get triggered when user scrolls the palette
  // will navigate the tab bar and change the selected index automatically
  void navigateToTab(ScrollNotification scrollInfo){
    double currentPixel = scrollInfo.metrics.pixels;
    NavigationIndicator indicator = NavigationIndicator();

    // calculate index of color type he is currently on
    // hint : index is for color type (6 indices), offset is for color degree (28 offsets)
    for (int i=1 ; i< colorCategories.values.length ;i++){
      if(currentPixel < (indicator.getColorOffsets(i) * 150)) { // 150 is the height of the color card
        selectedTabIndex = i-1;
        break;
      }
      else selectedTabIndex = i;
      // reached last offset but his location is greater than all offsets
      // then the selected index will be the last index
    }

    // now since we located our index lets navigate to
    if (selectedTabIndex != _prevSelectedIndex){
      // navigate to the {new} selected tab
      barController.animateTo(
        (selectedTabIndex / 2).floorToDouble() * screenWidth, // a screen width has only two tabs
        duration: Duration(milliseconds: 50),
        curve: Curves.easeOut,
      );
    }

    notifyListeners();
  }

}
