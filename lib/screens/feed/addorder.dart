import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/dialogbox.dart';
import 'package:poultry_app/widgets/generalappbar.dart';

class AddOrderPage extends StatefulWidget {
  const AddOrderPage({super.key});

  @override
  State<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends State<AddOrderPage> {
  final date = TextEditingController();
  List list = ["lorem", "lorem", "lorem", "lorem"];
  bool cash = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Add Order",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Container(
                  height: 27,
                  width: 93,
                  decoration: shadowDecoration(6, 0, yellow),
                  child: Center(
                    child: Text(
                      "Order No. 124",
                      style: bodyText10w600(color: white),
                    ),
                  ),
                ),
              ),
              CustomTextField(
                hintText: "Date",
                suffix: true,
                controller: date,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomDropdown(
                          list: list, height: 58, hint: "Feed Type")),
                  addHorizontalySpace(15),
                  Container(
                    height: 58,
                    width: 58,
                    decoration: shadowDecoration(10, 0, yellow),
                    child: Icon(
                      Icons.add,
                      size: 28,
                      color: white,
                    ),
                  )
                ],
              ),
              CustomTextField(hintText: "Feed Company"),
              CustomTextField(hintText: "50Kg"),
              CustomTextField(hintText: "Bag Quantity"),
              CustomTextField(hintText: "Bag Price"),
              CustomTextField(hintText: "Total"),
              Text(
                "Payment Method",
                style: bodyText15w500(color: darkGray),
              ),
              addVerticalSpace(15),
              Row(
                children: [
                  Text(
                    "Cash",
                    style: bodyText15w500(color: darkGray),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: FlutterSwitch(
                      padding: 3,
                      value: cash,
                      inactiveColor: yellow,
                      activeColor: yellow,
                      onToggle: (value) {
                        setState(() {
                          cash = value;
                        });
                      },
                      width: 50,
                      height: 25,
                      toggleSize: 20,
                    ),
                  ),
                  Text(
                    "Online",
                    style: bodyText15w500(color: black),
                  ),
                ],
              ),
              addVerticalSpace(10),
              CustomButton(
                  text: "Place Order",
                  onClick: () {
                    showDialog(
                        context: context,
                        builder: (context) => ShowDialogBox(
                              message: "Order Placed!!",
                            ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
