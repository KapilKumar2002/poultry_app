import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';

class AddVaccine extends StatefulWidget {
  const AddVaccine({super.key});

  @override
  State<AddVaccine> createState() => _AddVaccineState();
}

class _AddVaccineState extends State<AddVaccine> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Add Vaccination",
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
                    CustomDropdown(list: list, height: 58, hint: "Breed"),
                    CustomTextField(hintText: "Day"),
                    CustomDropdown(list: list, height: 58, hint: "Vaccine"),
                    CustomDropdown(
                        list: list, height: 58, hint: "Vaccine Type"),
                    CustomDropdown(list: list, height: 58, hint: "Method"),
                    CustomTextField(hintText: "Description"),
                  ],
                ),
                CustomButton(text: "Add", onClick: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
