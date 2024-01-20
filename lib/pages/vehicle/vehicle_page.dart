import 'package:flutter/material.dart';
import '../../design/styles.dart';
import '../../design/colors.dart';
import '../../design/dimensions.dart';
import 'vehicle_list.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dispatcher by Gerhard.com',
            style: primaryTextStyle),
        centerTitle: true,
        elevation: elevation0, // shadow
        backgroundColor: surfaceColor,
      ),
      body: Container(
        color: backgroundColor,
        child: const VehicleList(),
      ),
    );
  }
}