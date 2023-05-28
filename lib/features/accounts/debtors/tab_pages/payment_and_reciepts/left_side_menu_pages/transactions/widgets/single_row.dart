import 'package:erptwo/features/accounts/debtors/tab_pages/payment_and_reciepts/left_side_menu_pages/transactions/widgets/single_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/colors.dart';

class TransactionTableSingleRow extends StatefulWidget {
  const TransactionTableSingleRow({
    super.key,
    required this.width,
    required this.isBold,
    required this.columnOneText,
    required this.columnTwoText,
    required this.columnThreeText,
    required this.columnFourText,
    required this.columnFiveText,
    required this.columnSixText,
    required this.columnSevenText,
    required this.columnEightText,
    required this.columnNineText,
    required this.columnTenText,
    required this.columnElevenText,
    required this.columnTwelveText,
    required this.columnThirteenText,
    required this.columnFourteenText,
    required this.columnFifteenText,
    required this.columnSixteenText,
    required this.onTap,
  });
  final double width;
  final bool? isBold;
  final String? columnOneText;
  final String? columnTwoText;
  final String? columnThreeText;
  final String? columnFourText;
  final String? columnFiveText;
  final String? columnSixText;
  final String? columnSevenText;
  final String? columnEightText;
  final String? columnNineText;
  final String? columnTenText;
  final String? columnElevenText;
  final String? columnTwelveText;
  final String? columnThirteenText;
  final String? columnFourteenText;
  final String? columnFifteenText;
  final String? columnSixteenText;
  final onTap;

  @override
  State<TransactionTableSingleRow> createState() =>
      _TransactionTableSingleRowState();
}

class _TransactionTableSingleRowState extends State<TransactionTableSingleRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return accountMainColor;
      }
      return accountMainColor;
    }

    return InkWell(
      onTap: widget.onTap,
      child: SizedBox(
        width: widget.width - ((widget.width * 2 / 9) - 36),
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.columnOneText! == ""
                    ? Expanded(
                        flex: 1,
                        child: Container(
                          color: accountsColor.withOpacity(0.2),
                          height: 30.0.h,
                          child: Center(
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      )
                    : SingleCell(
                        cellColor: accountsColor.withOpacity(0.2),
                        text: widget.columnOneText!,
                        fontWeight: widget.isBold == true
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnTwoText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnThreeText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnFourText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnFiveText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnSixText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnSevenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnEightText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnNineText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnTenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnElevenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnTwelveText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnThirteenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnFourteenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.2),
                  text: widget.columnFifteenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
                SingleCell(
                  cellColor: accountsColor.withOpacity(0.1),
                  text: widget.columnSixteenText!,
                  fontWeight: widget.isBold == true
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ],
            ),
            Container(
              height: 1,
              width: 1.5 * MediaQuery.of(context).size.width,
              color: white,
            ),
          ],
        ),
      ),
    );
  }
}
