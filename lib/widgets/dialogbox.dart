import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';

class ShowDialogBox extends StatelessWidget {
  final String? message;
  final String? subMessage;
  const ShowDialogBox({super.key, this.message, this.subMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            addVerticalSpace(10),
            Image.asset(
              "assets/images/verify.png",
              height: 109,
              width: 109,
              fit: BoxFit.fill,
            ),
            addVerticalSpace(40),
            Text(
              message ?? "",
              style: bodyText28Bold(color: black),
            ),
            subMessage != null
                ? Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 35),
                    child: Text(
                      textAlign: TextAlign.center,
                      subMessage ?? "",
                      style: bodyText16normal(color: darkGray, height: 1.5),
                    ),
                  )
                : addVerticalSpace(0),
            subMessage != null
                ? addVerticalSpace(0)
                : Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CustomButton(
                      text: "View Ad",
                      onClick: () {},
                      width: 200,
                      height: 40,
                      textStyle: bodyText16Bold(color: white),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
