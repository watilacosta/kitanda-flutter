import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String label;
  final bool occultText;

  const CustomTextField({
    Key? key,
    required this.prefixIcon,
    required this.label,
    this.suffixIcon,
    this.occultText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        obscureText: occultText,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(prefixIcon, size: 20,),
          suffixIcon: occultText ? IconButton(
            onPressed: null,
            icon: Icon(suffixIcon, size: 20,)
          ) : null,
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
