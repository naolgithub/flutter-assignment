import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String selectedValue = 'KOR';
  List<String> languages = ['KOR', 'ENG', 'JPN'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17,
      width: 63,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          icon:
              const Icon(Icons.arrow_drop_down, size: 12), // Adjusted icon size
          elevation: 16,
          style: const TextStyle(
              color: Colors.black, fontSize: 10), // Adjusted text size
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: languages.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
