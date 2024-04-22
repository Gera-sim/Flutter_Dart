import 'package:flutter/material.dart';
import 'package:untitled/design/styles.dart';
import '../../design/images.dart';
import '../../design/dimensions.dart';
import '../../design/colors.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;
  final Function() onStateTap;

  const VehicleItem({super.key, required this.onTap, required this.onStateTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: padding8, right: padding16),
            child: Row(
              children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      //занимает всю ширину
      child: Padding(
        padding: const EdgeInsets.only(left: padding6, right: padding6),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('BMW GS-7638',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: body2TextStyle),
              if (false)
                const Text('No driver',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: hint1TextStyle)
              else
                RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(text: 'Driver: ', style: hint1TextStyle),
                      TextSpan(text: 'Paul', style: body2TextStyle),
                    ]))
            ]),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: onStateTap,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            statePickupImage,
            const Text('pickup',
                style: hint2TextStyle)
          ]),
    );
  }
}
