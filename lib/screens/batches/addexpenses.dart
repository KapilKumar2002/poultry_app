import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/custombutton.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/customtextfield.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/navigation.dart';

class AddExpensesPage extends StatefulWidget {
  const AddExpensesPage({super.key});

  @override
  State<AddExpensesPage> createState() => _AddExpensesPageState();
}

class _AddExpensesPageState extends State<AddExpensesPage> {
  final dateController = TextEditingController();
  List list = ["lorem", "lorem", "lorem", "lorem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Batch",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height(context) - 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addVerticalSpace(20),
                        Center(
                          child: Text(
                            "Add Expenses",
                            style: bodyText22w600(color: black),
                          ),
                        ),
                        addVerticalSpace(20),
                        CustomTextField(
                          hintText: "Date",
                          suffix: true,
                          controller: dateController,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: CustomDropdown(
                                    list: list,
                                    height: 58,
                                    hint: "Expenses Category")),
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
                        CustomTextField(hintText: "Amount"),
                        CustomTextField(hintText: "Description"),
                      ]),
                ),
              ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: CustomButton(
                    text: "Cash Out",
                    onClick: () {},
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
