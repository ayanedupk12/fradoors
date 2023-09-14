import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  final Function(bool) onChanged;

  CustomCheckBox({required this.isChecked, required this.onChanged});

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
          widget.onChanged(_isChecked);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: _isChecked ? primaryColor : Colors.transparent,
          border: Border.all(
            color: primaryColor,
            width: 2.0,
          ),
        ),
        width: 20.0,
        height: 20.0,
        child: _isChecked
            ? Icon(
          Icons.check,
          color: Colors.white,
          size: 16.0,
        )
            : null,
      ),
    );
  }
}
