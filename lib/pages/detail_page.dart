import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/constant.dart';
import 'package:travel_app/style/route.dart';
import 'package:travel_app/style/text_style.dart';
import 'package:travel_app/widgets/custom_button.dart';

class DetailPage extends StatelessWidget {
  static const routName = detailRoute;

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 381),
            padding: EdgeInsets.all(defaultMargin),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  defaultRadius,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Bali, Indonesia',
                  style: kHeading5,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kLightPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/star_icon.png',
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4.92',
                          style: kSubtitle.copyWith(
                            fontWeight: semibold,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kLightPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/cloud_icon.png',
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '27ºC',
                          style: kSubtitle.copyWith(
                            fontWeight: semibold,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kLightPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/airplane_icon.png',
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '9 Jan',
                          style: kSubtitle.copyWith(
                            fontWeight: semibold,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/detail_image.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      );
    }

    Widget _body() {
      return Padding(
        padding: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: defaultMargin,
          bottom: 110,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: kTitle.copyWith(color: kBlackColor),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and explore trem ely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.',
              style: kBodyText.copyWith(height: 2),
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      );
    }

    Widget _footer() {
      return Container(
        height: 90,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 18,
        ),
        color: kWhiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Starting From',
                  style: kBodyText.copyWith(
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$500 - 750',
                  style: kTitle.copyWith(
                    fontWeight: semibold,
                    color: kPurpleColor,
                  ),
                ),
              ],
            ),
            const CustomButton(),
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: _footer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kLightGrey,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            _header(),
            _body(),
          ],
        ),
      ),
    );
  }
}
