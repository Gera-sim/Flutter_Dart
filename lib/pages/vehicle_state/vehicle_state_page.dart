import 'package:flutter/material.dart';
import 'vehicle_state_list.dart';
import '../../design/images.dart';
import '../../design/styles.dart';
import '../../design/colors.dart';
import '../../design/dimensions.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update vehicle state',
            style: primaryTextStyle),
        centerTitle: true,
        elevation: elevation0, // shadow
        backgroundColor: surfaceColor,
        leading: IconButton(icon: arrowBackImage, onPressed: () {
          Navigator.pop(context); // нельзя делать навигатор pop внутри этого виджета
        }),// кнопка назад
      ),
      body: Container(
        color: backgroundColor,
        child: const VehicleStateList()
      ),
    );
  }
}