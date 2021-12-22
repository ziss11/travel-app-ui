import 'package:flutter/material.dart';
import 'package:travel_app/style/colors.dart';
import 'package:travel_app/style/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(kPurpleColor),
        ),
        onPressed: () {},
        child: Text(
          'Book Now',
          style: kTitle,
        ),
      ),
    );
  }
}
