import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/navigation.dart';

class AddMortalityPage extends StatefulWidget {
  const AddMortalityPage({super.key});

  @override
  State<AddMortalityPage> createState() => _AddMortalityPageState();
}

class _AddMortalityPageState extends State<AddMortalityPage> {
  final date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: GeneralAppBar(
          islead: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        goBack(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  addHorizontalySpace(10),
                  Text(
                    "Batch",
                    style: bodyText18w500(color: black),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      addVerticalSpace(20),
                      Center(
                        child: Text(
                          "Add Mortality",
                          style: bodyText22w600(color: black),
                        ),
                      ),
                      addVerticalSpace(20),
                      CustomTextField(
                        hintText: "Date",
                        suffix: true,
                        controller: date,
                      ),
                      CustomTextField(hintText: "Mortality"),
                      CustomTextField(hintText: "Description")
                    ]),
              ),
            ]),
            addVerticalSpace(height(context) * .22),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: CustomButton(
                  text: "Save",
                  onClick: () {},
                  width: width(context),
                  height: 55),
            )
          ],
        ),
      ),
    );
  }
}
