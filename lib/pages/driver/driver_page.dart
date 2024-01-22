import 'package:flutter/material.dart';
import 'driver_list.dart';
import '../../design/images.dart';
import '../../design/styles.dart';
import '../../design/colors.dart';
import '../../design/dimensions.dart';


class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select driver',
            style: primaryTextStyle),
        centerTitle: true,
        elevation: elevation0, // shadow
        backgroundColor: surfaceColor,
        leading: IconButton(icon: arrowBackImage, onPressed: () {
          Navigator.pop(context);
        }),// кнопка назад
      ),
      body: Container(
        color: backgroundColor,
        child: const DriverList(),
      ),
    );
  }
}