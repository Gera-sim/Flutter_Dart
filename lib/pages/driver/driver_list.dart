import 'package:flutter/material.dart';
import '../../design/utils/size_utils.dart';
import '../../design/widgets/accent_button.dart';
import '../../design/colors.dart';
import '../../design/dimensions.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _saveButton(context))
    ]);
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(
          left: padding16,
          top: padding16,
          right: padding16,
          bottom: getListBottomPadding(context)),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(color: surfaceColor, height: height64);
      },
    );
  }

  Widget _saveButton(BuildContext context) {
    //safe area сдвигает виджет на безопасное расстояние
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(title: 'Save', onTap: () {}),
    ));
  }
}