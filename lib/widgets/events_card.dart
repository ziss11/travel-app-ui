import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/text_style.dart';

class EventsCard extends StatelessWidget {
  final String img;
  final String name;
  final String location;

  const EventsCard({
    Key? key,
    required this.img,
    required this.location,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin),
      height: 230,
      width: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: kTitle,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: kWhiteColor,
                  size: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  location,
                  style: kSubtitle.copyWith(
                    color: kWhiteColor,
                  ),
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
