import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/navigation.dart';

class AddEggsPage extends StatefulWidget {
  const AddEggsPage({super.key});

  @override
  State<AddEggsPage> createState() => _AddEggsPageState();
}

class _AddEggsPageState extends State<AddEggsPage> {
  final date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Batch",
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height(context) - 135,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(children: [
                      Text(
                        "Add Eggs",
                        style: bodyText22w600(color: black),
                      ),
                      addVerticalSpace(20),
                      CustomTextField(
                        hintText: "Date",
                        suffix: true,
                        controller: date,
                      ),
                      CustomTextField(hintText: "Egg Tray Collection"),
                      CustomTextField(hintText: "Pullet Eggs"),
                      CustomTextField(hintText: "Broken"),
                      CustomTextField(hintText: "Description")
                    ]),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: CustomButton(
                    text: "Save",
                    onClick: () {
                      print(date.text.toString());
                    },
                    width: width(context),
                    height: 55),
              )
            ],
          ),
        ),
      ),
    );
  }
}
