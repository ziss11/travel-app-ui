import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/text_style.dart';
import 'package:travel_app/widgets/countries_card.dart';
import 'package:travel_app/widgets/events_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 6,
    vsync: this,
  );
  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Padding(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/profile_pic.png',
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Bimo,',
                        style: kTitle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Good Morning',
                        style: kSubtitle,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/search_btn.png',
                    width: 20,
                    color: kYellowColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Let’s enjoy your\nVacation',
              style: kHeading5,
            )
          ],
        ),
      );
    }

    Widget _tabBar() {
      var tabList = [
        'All',
        'Asia',
        'America',
        'Africa',
        'Europa',
        'North',
      ];
      return TabBar(
        physics: const BouncingScrollPhysics(),
        isScrollable: true,
        controller: tabController,
        labelColor: kYellowColor,
        unselectedLabelColor: kDarkGrey,
        indicatorColor: kYellowColor,
        indicatorSize: TabBarIndicatorSize.label,
        padding: EdgeInsets.only(
          left: defaultMargin,
        ),
        tabs: tabList.map((tab) => Tab(text: tab)).toList(),
      );
    }

    Widget _popularList() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 36,
              left: defaultMargin,
              bottom: 20,
              right: defaultMargin,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Popular Countries',
                    style: kHeading6,
                  ),
                ),
                Text(
                  'See All',
                  style: kSubtitle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              scrollDirection: Axis.horizontal,
              children: const [
                CountriesCard(
                  img: 'assets/countrie1.png',
                  name: 'Bali',
                  isPopular: true,
                ),
                CountriesCard(
                  img: 'assets/countrie2.png',
                  name: 'Paris',
                  isPopular: false,
                ),
                CountriesCard(
                  img: 'assets/countrie3.png',
                  name: 'England',
                  isPopular: false,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget _eventList() {
      return Container(
        margin: const EdgeInsets.only(bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: defaultMargin,
                bottom: 20,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Ongoing Events',
                      style: kHeading6,
                    ),
                  ),
                  Text(
                    'See All',
                    style: kSubtitle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                physics: const BouncingScrollPhysics(),
                children: const [
                  EventsCard(
                    img: 'assets/event1.png',
                    location: 'Brazil',
                    name: 'Rio Carnival, Rio de Janiro',
                  ),
                  EventsCard(
                    img: 'assets/event2.png',
                    location: 'Japan',
                    name: 'Sapporo Snow Festival',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        _header(),
        _tabBar(),
        _popularList(),
        _eventList(),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
}
