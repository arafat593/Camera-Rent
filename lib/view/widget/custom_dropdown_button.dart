import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {

  final List<String> countyList;
  const CustomDropdownButton({super.key, required this.countyList});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedItem,
        hint: Text('Select Your country'),
        icon: Icon(Icons.keyboard_arrow_down),
        items: widget.countyList.map((item){
          return DropdownMenuItem(child: Text(item),
          value: item);
        }).toList(),

        onChanged: (value){
          setState(() {
            selectedItem = value;
          });
        });
  }
}
