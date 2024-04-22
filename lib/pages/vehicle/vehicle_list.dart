import 'package:flutter/material.dart';
import 'package:untitled/pages/vehicle_state/vehicle_state_list.dart';
import 'package:untitled/pages/vehicle_state/vehicle_state_page.dart';
import '../../pages/driver/driver_page.dart';
import '../../design/utils/size_utils.dart';
import '../../design/dialog/error_dialog.dart';
import '../../design/dimensions.dart';
import '../../design/widgets/accent_button.dart';
import 'vehicle_item.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _updateButton(context))
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
        return VehicleItem(onTap: () async {
          await _showDriverPage(context);
        }, onStateTap: () async {
          await _showVehicleStatePage(context);
        },);
      },
    );
  }

  Widget _updateButton(BuildContext context) {
    //safe area сдвигает виджет на безопасное расстояние
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(
          title: 'Update',
          onTap: () {
            _showErrorDialog(context);
          }),
    ));
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const ErrorDialog(
              description: 'Server is unavailable, Please try again later.');
        });
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const DriverPage();
    }));
  }

  Future<void> _showVehicleStatePage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const VehicleStatePage();
    }));
  }


}