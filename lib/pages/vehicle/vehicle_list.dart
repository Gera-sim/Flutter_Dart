import 'package:flutter/material.dart';
import '../../design/dimensions.dart';
import '../../design/widgets/accent_button.dart';
import 'vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context), Align(alignment: Alignment.bottomCenter, child: _updateButton())
    ]);
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding =
        MediaQuery.of(context).padding.bottom; //получаем расстояние
    final bottomPadding = (safeBottomPadding + height8) * 2 + height40;
    
    return ListView.separated(
      itemCount: 15,
      padding: EdgeInsets.only(
          left: padding16,
          top: padding16,
          right: padding16,
          bottom: bottomPadding),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem();
      },
    );
  }

  Widget _updateButton() {
    //safe area сдвигает виджет на безопасное расстояние
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(title: 'Update', onTap: () {}),
    ));
  }
}
