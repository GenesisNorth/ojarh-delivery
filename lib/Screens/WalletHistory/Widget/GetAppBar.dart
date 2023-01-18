import 'package:deliveryboy_ojarh/Screens/WalletHistory/Widget/GetDialogs.dart';
import 'package:flutter/material.dart';
import '../../../Helper/color.dart';

class GetAppBar {
  static getAppBar(
    String title,
    BuildContext context,
  ) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.all(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () => Navigator.of(context).pop(),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: primary,
                  size: 30,
                ),
              ),
            ),
          );
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          color: primary,
        ),
      ),
      backgroundColor: white,
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(4),
            onTap: () {
              return GetDialogs.filterDialog(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(
                4.0,
              ),
              child: Icon(
                Icons.filter_alt_outlined,
                color: primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
