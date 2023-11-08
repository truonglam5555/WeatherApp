import 'package:flutter/material.dart';
import 'package:weather_app/config/theme/light_theme_colors.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom(
      {super.key, this.controller, this.onFieldSubmitted});
  final TextEditingController? controller;
  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Enter address!',
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: LightThemeColors.primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: LightThemeColors.primaryColor,
              width: 3,
            ),
          ),
        ),
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
