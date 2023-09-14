import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/core/utils/colors.dart';

class CustomDropdownFormField<T> extends StatelessWidget {
  String? text;
  final ValueChanged<String?>? onChange;
  List<String>? actionsList;
  final double? width;
  final double? height;

  CustomDropdownFormField({
    Key? key,
    this.onChange,
    this.text,
    this.actionsList,
    this.width,
    this.height

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??Get.width*0.25,
      height: height??Get.height*0.05,
      child: DropdownButtonFormField(
        // value: controller.prevState!.state ?? '',
        isExpanded: true,
        hint: Text(text!),
        onChanged: onChange,
        items:
        // controller.states.length==0?controller.tempListForNoItems:
        actionsList!.map((type) {
          // controller.prevState=state;
          return DropdownMenuItem(
            value: type,
            child: Text(type),
          );
        }).toList(),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          // fillColor: Colors.white,
          // filled: true,
          enabled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 1.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 1.0),
          ),
        ),
      ),
    );
  }
}
