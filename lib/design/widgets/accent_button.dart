import 'package:flutter/material.dart';
import '../styles.dart';
import '../colors.dart';
import '../dimensions.dart';

class AccentButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const AccentButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(width200, height40),
            maximumSize: const Size.fromHeight(height40),
            backgroundColor: primaryColor,
            elevation: elevation0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius20)),
            padding: const EdgeInsets.only(
                left: padding16,
                right: padding16)), //изменение предустановленных падингов

        child: Text(title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: accentButtonTextStyle));
  }
}
