import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/dialogbox.dart';

class StockInWidget extends StatefulWidget {
  const StockInWidget({super.key});

  @override
  State<StockInWidget> createState() => _StockInWidgetState();
}

class _StockInWidgetState extends State<StockInWidget> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) - 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomDropdown(list: list, height: 58, hint: "Feed Type"),
              CustomDropdown(list: list, height: 58, hint: "Transfer to Batch"),
              CustomTextField(hintText: "Quantity: Stock Available")
            ],
          ),
          CustomButton(
              text: "Receive Feed",
              onClick: () {
                showDialog(
                    context: context,
                    builder: (context) => ShowDialogBox(
                          message: "Feed Received!!",
                        ));
              })
        ],
      ),
    );
  }
}
