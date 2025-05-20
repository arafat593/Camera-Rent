import 'package:dropdown_button2/dropdown_button2.dart';
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
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          iconStyleData: IconStyleData(icon: Icon(Icons.keyboard_arrow_down),iconEnabledColor: Colors.orange),
          hint: Text(
            'Select Country',
            style: TextStyle(fontSize: 14, color: Theme.of(context).hintColor),
          ),
          value: selectedItem,
          items:
          widget.countyList
              .map(
                (String item) =>
                DropdownMenuItem(value: item, child: Text(item)),
          )
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedItem = value;
            });
          },

          buttonStyleData: ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 190,
          ),
        ),
      ),
    );
  }
}