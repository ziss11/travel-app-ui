import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/text_style.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({Key? key}) : super(key: key);

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget _navbarIcon(int index, String icon, String name) {
      return InkWell(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: AnimatedContainer(
          width: currentIndex == index ? 100 : 40,
          duration: const Duration(milliseconds: 400),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: currentIndex == index ? kLightPurple : Colors.transparent,
            borderRadius: BorderRadius.circular(
              defaultRadius,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 18,
                height: 18,
                color: currentIndex == index ? kPurpleColor : kGreyColor,
              ),
              SizedBox(
                width: currentIndex == index ? 8 : 0,
              ),
              currentIndex == index
                  ? Expanded(
                      child: Text(
                        name,
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          color: kPurpleColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      height: 68,
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: kBlackColor.withOpacity(.3),
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          _navbarIcon(
            0,
            'assets/home_icon.png',
            'Home',
          ),
          _navbarIcon(
            1,
            'assets/notif_icon.png',
            'Notifications',
          ),
          _navbarIcon(
            2,
            'assets/menu_icon.png',
            'Menu',
          ),
          _navbarIcon(
            3,
            'assets/settings_icon.png',
            'Settings',
          ),
        ],
      ),
    );
  }
}
