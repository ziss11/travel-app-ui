import 'package:flutter/material.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/route.dart';
import 'package:travel_app/style/text_style.dart';

class MainPage extends StatefulWidget {
  static const routeName = mainRoute;
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget _navbar() {
      Widget _navbarIcon(int index, String icon, String name) {
        return InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: AnimatedContainer(
            width: currentIndex == index ? 130 : 40,
            duration: const Duration(milliseconds: 400),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  icon,
                  width: 18,
                  height: 18,
                  color: currentIndex == index ? kYellowColor : kGreyColor,
                ),
                currentIndex == index
                    ? Flexible(
                        child: Text(
                          name,
                          style: kSubtitle.copyWith(
                            fontWeight: semibold,
                            color: kYellowColor,
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
          color: kNavbarColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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

    Widget _buildContent(int index) {
      switch (index) {
        case 0:
          return const HomePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: _navbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: _buildContent(currentIndex),
    );
  }
}
