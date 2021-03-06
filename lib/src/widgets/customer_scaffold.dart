import 'package:farmers_market/src/styles/colors.dart';
import 'package:farmers_market/src/widgets/products_customer.dart';
import 'package:farmers_market/src/widgets/profile_customer.dart';
import 'package:flutter/cupertino.dart';

abstract class CustomerScaffold {
  static CupertinoTabScaffold get cupertinoTabScaffold {
    return CupertinoTabScaffold(
      tabBar: _cupertinoTabBar,
      tabBuilder: (context, index) {
        return _pageSelection(index);
      },
    );
  }
  static get _cupertinoTabBar {
    return CupertinoTabBar(
      backgroundColor: AppColors.darkblue,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.create), label: 'Products'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
      ], 
    );
  }
  static Widget _pageSelection(int index){
    if(index==0){
      return ProductsCustomer();
    }
    return ProfileCustomer();
  }
}