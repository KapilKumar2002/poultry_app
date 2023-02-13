import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/navigation.dart';

class AddIncomePage extends StatefulWidget {
  const AddIncomePage({super.key});

  @override
  State<AddIncomePage> createState() => _AddIncomePageState();
}

class _AddIncomePageState extends State<AddIncomePage> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  String? method;
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
                        "Add Income",
                        style: bodyText22w600(color: black),
                      ),
                    ),
                    addVerticalSpace(20),
                    CustomTextField(hintText: "Name"),
                    CustomTextField(hintText: "Contact"),
                    Row(
                      children: [
                        Expanded(
                            child: CustomDropdown(
                                list: list,
                                height: 58,
                                hint: "Income Category")),
                        addHorizontalySpace(15),
                        Container(
                          height: 58,
                          width: 58,
                          decoration: shadowDecoration(10, 0, yellow),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: white,
                          )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: CustomTextField(hintText: "Quantity")),
                        addHorizontalySpace(10),
                        Expanded(child: CustomTextField(hintText: "Weight")),
                        addHorizontalySpace(10),
                        Expanded(child: CustomTextField(hintText: "Rate")),
                      ],
                    ),
                    CustomTextField(hintText: "Bill Amount"),
                    addVerticalSpace(5),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Payment Method:",
                        style: bodyText15w500(color: black),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: "Cash",
                                groupValue: "Cash",
                                onChanged: (value) {
                                  setState(() {
                                    method = value;
                                  });
                                },
                                activeColor: yellow,
                              ),
                              Text(
                                "Cash",
                                style: bodyText15normal(color: darkGray),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: "Online",
                                groupValue: "Online",
                                onChanged: (value) {
                                  setState(() {
                                    method = value;
                                  });
                                },
                                activeColor: yellow,
                              ),
                              Text(
                                "Online",
                                style: bodyText15normal(color: darkGray),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: "Unpaid",
                                groupValue: "Unpaid",
                                onChanged: (value) {
                                  setState(() {
                                    method = value;
                                  });
                                },
                                activeColor: yellow,
                              ),
                              Text(
                                "Unpaid",
                                style: bodyText15normal(color: darkGray),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomTextField(hintText: "Amount Paid"),
                    CustomTextField(hintText: "Amount Due"),
                    CustomTextField(hintText: "Description"),
                    CustomButton(
                        text: "Cash In",
                        onClick: () {},
                        width: width(context),
                        height: 55)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
