import 'package:flutter/material.dart';
import 'package:poultry_app/utils/constants.dart';
import 'package:poultry_app/widgets/generalappbar.dart';
import 'package:poultry_app/widgets/searchbox.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  List currency = [
    {"currency": "INR"},
    {"currency": "USD"},
    {"currency": "AFN"},
    {"currency": "DZD"},
    {"currency": "EUR"},
    {"currency": "AUD"},
    {"currency": "CAD"},
    {"currency": "EGP"},
    {"currency": "ILS"},
  ];
  int value = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: GeneralAppBar(
          islead: false,
          bottom: true,
          text: "Currency",
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomSearchBox(
                hint: "Search Currency",
              ),
            ),
            addVerticalSpace(10),
            Divider(
              height: 0,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      value == index
                          ? Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Text(
                                "Current",
                                style: bodyText17w500(color: darkGray),
                              ),
                            )
                          : addVerticalSpace(0),
                      Container(
                        height: 60,
                        child: Center(
                          child: ListTile(
                            onLongPress: () {
                              setState(() {
                                value == index ? value = -1 : value = index;
                              });
                            },
                            leading: Image.asset("assets/images/flag.png"),
                            title: Text(
                              currency[index]['currency'],
                              style: bodyText16w500(color: black),
                            ),
                            trailing: value == index
                                ? Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: black,
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                  );
                },
                itemCount: currency.length),
            Divider(
              height: 0,
            )
          ],
        ),
      ),
    );
  }
}
