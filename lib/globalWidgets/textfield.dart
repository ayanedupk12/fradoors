import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/core/utils/colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool autoFocus;
  final double? width;
  final double? height;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  int? multilines;

  CustomTextField({
    Key? key,
    this.controller,
    this.obscureText = false,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.autoFocus = false,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.width,
    this.height,
    this.multilines
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: widget.width??Get.width*0.7,
      height: widget.height??Get.height*0.1,

      child: TextField(
        maxLines: widget.multilines??1,
        controller: _controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.suffixIcon != null ? Icon(widget.suffixIcon) : null,
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 0.0),
          ),
          enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: primaryColor, width: 0.0),
      ),
        ),
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        onChanged: widget.onChanged,
      ),
    );
  }
}
