import 'package:flutter/material.dart';
import '../../design/dimensions.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding =
      MediaQuery.of(context).padding.bottom; //получаем расстояние
  return (safeBottomPadding + height8) * 2 + height40;
  //реконструируем расстояние safe bottom + отступы (2 шт, поэтому *2) + высота кнопки (40)
}