import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoponline/users/fragments/favorites_fragments_screen.dart';
import 'package:shoponline/users/fragments/home_fragment_screen.dart';
import 'package:shoponline/users/fragments/order_fragment_screenn.dart';
import 'package:shoponline/users/fragments/profile_fragment_screen.dart';
import 'package:shoponline/users/userPerferences/current_user.dart';
import 'package:get/get.dart';

class DashbordOfFragments extends StatelessWidget {
  final CurrentUser _rememberCurrentUser = Get.put(CurrentUser());

  final List<Widget> _fragmentScreen = [
    const HomeFragmentScreen(),
    const FavoriteFragmentScreen(),
    const OrderFragmentScreen(),
    ProfileFragmentScreen(),
  ];

  final List _navigationButtonsProperties = [
    {
      "active_icon": Icons.home,
      "non_active_icon": Icons.home_outlined,
      "label": "Home",
    },
    {
      "active_icon": Icons.favorite,
      "non_active_icon": Icons.favorite_border,
      "label": "Favorite",
    },
    {
      "active_icon": FontAwesomeIcons.boxOpen,
      "non_active_icon": FontAwesomeIcons.box,
      "label": "Orders",
    },
    {
      "active_icon": Icons.person,
      "non_active_icon": Icons.person_2_outlined,
      "label": "Profile",
    },
  ];
  final RxInt _indexNumber = 0.obs;

  DashbordOfFragments({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CurrentUser(),
        initState: (curentState) {
          _rememberCurrentUser.getUserInfo();
        },
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Obx(() => _fragmentScreen[_indexNumber.value]),
            ),
            bottomNavigationBar: Obx(
              () => BottomNavigationBar(
                currentIndex: _indexNumber.value,
                onTap: (value) {
                  _indexNumber.value = value;
                },
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white24,
                items: List.generate(4, (index) {
                  var navBtnProperty = _navigationButtonsProperties[index];
                  return BottomNavigationBarItem(
                      backgroundColor: Colors.black,
                      icon: Icon(navBtnProperty["non_active_icon"]),
                      activeIcon: Icon(navBtnProperty["active_icon"]),
                      label: navBtnProperty["label"]);
                }),
              ),
            ),
          );
        });
  }
}
