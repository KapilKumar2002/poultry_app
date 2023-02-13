import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/dialogbox.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/quantitybutton.dart';

class AddInventoryPage extends StatefulWidget {
  const AddInventoryPage({super.key});

  @override
  State<AddInventoryPage> createState() => _AddInventoryPageState();
}

class _AddInventoryPageState extends State<AddInventoryPage> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  int value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Add Inventory",
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              addVerticalSpace(25),
              CustomDropdown(
                list: list,
                height: 58,
                hint: "Order No.",
                iconSize: 25,
              ),
              CustomTextField(hintText: "Feed Type"),
              CustomTextField(hintText: "Feed Company"),
              CustomTextField(hintText: "50Kg"),
              QuantityButton(),
              CustomTextField(hintText: "Bag Price"),
              CustomTextField(hintText: "Total"),
              CustomButton(
                  text: "Feed Received",
                  onClick: () {
                    showDialog(
                        context: context,
                        builder: (context) => ShowDialogBox(
                              message: "Feed Received!!",
                            ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
