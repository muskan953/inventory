import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _pinCodeTextFieldWidget,
          )
        : _pinCodeTextFieldWidget;
  }

  Widget get _pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ??
            const TextStyle(
              fontSize: 20,
              color: Colors.black, // Black numbers
              fontWeight: FontWeight.bold,
            ),
        hintStyle: hintStyle ??
            const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 50,
          fieldWidth: 44,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          inactiveFillColor: Colors.white, // White background
          activeFillColor: Colors.white,
          selectedFillColor: Colors.white,
          inactiveColor: Colors.blue, // Blue border
          activeColor: Colors.blue,
          selectedColor: Colors.blue,
          borderWidth: 2, // Border thickness
        ),
        onChanged: onChanged,
        validator: validator,
      );
}
