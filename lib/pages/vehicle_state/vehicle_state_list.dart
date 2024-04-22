import 'package:flutter/material.dart';
import 'package:untitled/design/images.dart';
import 'package:untitled/design/widgets/selectable_item.dart';
import '../../design/utils/size_utils.dart';
import '../../design/widgets/accent_button.dart';
import '../../design/dimensions.dart';

// class DriverList extends StatelessWidget {

class VehicleStateList extends StatefulWidget {
  // StatefulWidget уже содержит контекст, поэтому его теперь не нужно передавать
  const VehicleStateList({super.key});

  @override
  State<VehicleStateList> createState() => _VehicleStateListState();
}

class _VehicleStateListState extends State<VehicleStateList> {
  int? _selectedStateIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(),
      Align(alignment: Alignment.bottomCenter, child: _saveButton())
    ]);
  }

  Widget _list() {
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
        final bool isSelected =
            _selectedStateIndex == index; // сравнение сохраненного с текущим
        return SelectableItem(
            image: statePickupImage,
            leftPadding: padding16,
            title: 'Pickup',
            isSelected: isSelected,
            onTap: () {
              setState(() {
                //пересоздание виджета
                _selectedStateIndex = index;
              });
            });
      },
    );
  }

  Widget _saveButton() {
    //safe area сдвигает виджет на безопасное расстояние
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(
          left: padding16, right: padding16, bottom: padding8),
      child: AccentButton(title: 'Save', onTap: () {}),
    ));
  }
}
