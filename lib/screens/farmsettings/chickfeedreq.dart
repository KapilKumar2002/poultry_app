import 'package:flutter/material.dart';
import 'package:poultry_app/screens/farmsettings/addchickfeedreq.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/customdropdown.dart';
import 'package:poultry_app/widgets/floatbutton.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/navigation.dart';

class ChickFeedRequirementPage extends StatefulWidget {
  const ChickFeedRequirementPage({super.key});

  @override
  State<ChickFeedRequirementPage> createState() =>
      _ChickFeedRequirementPageState();
}

class _ChickFeedRequirementPageState extends State<ChickFeedRequirementPage> {
  List list = ["lorem", "lorem", "lorem", "lorem"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatedButton(onTap: () {
        NextScreen(context, AddChickFeedReq());
      }),
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Chick Feed Requirements",
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomDropdown(
                hp: 5,
                list: list,
                iconSize: 12,
                radius: 6,
                height: 30,
                hint: "Breed",
                width: width(context) * .35,
                textStyle: bodyText12w600(color: darkGray),
              ),
            ),
            addVerticalSpace(20),
            Divider(
              height: 0,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Day 1",
                          style: bodyText17w500(color: black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Breed",
                              style: bodyText14normal(color: darkGray),
                            ),
                            Text(
                              "100gms",
                              style: bodyText14normal(color: darkGray),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
            Divider(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
