import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';

class AddChickFeedReq extends StatefulWidget {
  const AddChickFeedReq({super.key});

  @override
  State<AddChickFeedReq> createState() => _AddChickFeedReqState();
}

class _AddChickFeedReqState extends State<AddChickFeedReq> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Chick Feed Requirement",
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height(context) - 135,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    addVerticalSpace(20),
                    CustomTextField(hintText: "Day"),
                    CustomDropdown(list: list, height: 58, hint: "Breed"),
                    CustomDropdown(list: list, height: 58, hint: "Feed Type"),
                    CustomTextField(hintText: "Grams"),
                  ],
                ),
                CustomButton(text: "Save", onClick: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
