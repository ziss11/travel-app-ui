import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/route.dart';
import 'package:travel_app/style/text_style.dart';

class CountriesCard extends StatelessWidget {
  final String img;
  final String name;
  final bool isPopular;

  const CountriesCard({
    Key? key,
    required this.img,
    required this.name,
    required this.isPopular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, detailRoute),
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 170,
        width: 120,
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Image.asset(img),
                isPopular
                    ? Container(
                        height: 30,
                        width: 63,
                        decoration: BoxDecoration(
                          color: kPurpleColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              defaultRadius,
                            ),
                            bottomLeft: Radius.circular(
                              defaultRadius,
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.star,
                          color: kWhiteColor,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              name,
              style: kHeading6.copyWith(
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
