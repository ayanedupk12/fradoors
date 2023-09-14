
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/core/utils/colors.dart';

import '../../core/utils/AllStrings.dart';
import '../../core/utils/styles.dart';

class ActionScreenController extends GetxController{


  Future<dynamic> ActionDialogueBox(
      ) {
    List<String> actionType=[
      'Planned',
      'Unplanned'
    ];
    return Get.defaultDialog(
        titlePadding: EdgeInsets.only(top: 30),
        radius: 10,
        title: customActions,
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
              height: 300,
              width: 400,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Custom Action',style: TextStyles.smallBlackText,),
                    SizedBox(height: 10,),
                    Container(
                      height: Get.height*0.1,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Reduce the gap between the door  and frame on the non-hinged side to no more than 4mm and no less than 2mm',style: TextStyles.primarySmallText,),
                      ))
                      ,
                    ),
                    SizedBox(height: 10,),
                    Text('Action Type',style: TextStyles.smallBlackText,),

                    SizedBox(height: 10,),
                    Center(
                      child: SizedBox(
                        width: Get.width/2,
                        child: DropdownButtonFormField(
                          // value: controller.prevState!.state ?? '',
                          isExpanded: true,
                          hint: Text("Planned"),
                          onChanged: (value) async{
                          },
                          items:
                          // controller.states.length==0?controller.tempListForNoItems:
                          actionType.map((type) {
                            // controller.prevState=state;
                            return DropdownMenuItem(
                              value: type,
                              child: Text(type),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            // fillColor: Colors.white,
                            // filled: true,
                            enabled: false,
                            enabledBorder: InputBorder.none,
                            border: OutlineInputBorder(
                              // borderSide: BorderSide(width: 10),
                              borderRadius: BorderRadius.circular(5),),),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side: BorderSide(color: primaryColor)
                                    )
                                )
                            ),
                            onPressed: (){
                            Get.back();
                            }, child: Text('Close',style: TextStyles.buttonTextBlack,)),
                        SizedBox(width: 10,),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      // side: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            onPressed: (){
                              Get.back();
                            }, child: Text('Save'))
                      ],
                    )
                  ])),
        )
    );
  }

}

