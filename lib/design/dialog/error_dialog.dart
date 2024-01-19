import 'package:flutter/material.dart';
import 'package:untitled/design/colors.dart';
import 'package:untitled/design/dimensions.dart';
import 'package:untitled/design/widgets/accent_button.dart';

class ErrorDialog extends StatelessWidget {
  final String description;
  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8)),
        child: Padding(
          padding: const EdgeInsets.all(padding16),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              const Text('Ooops...',
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: fontSize24,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: height8),
              Text(description,
                  style: const TextStyle(
                      color: secondaryColor,
                      fontSize: fontSize16,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: height20),
              Center(
                child: AccentButton(
                    title: 'OK',
                    onTap: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          ),
        ));
  }
}
