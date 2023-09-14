
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/AllStrings.dart';
import '../../core/utils/styles.dart';
import 'ActionScreenController.dart';

class ActionScreen extends StatelessWidget {
  ActionScreen({Key? key}) : super(key: key);
  final controller=Get.put(ActionScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(action,style: TextStyles.bodyText,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 20.0),
                    child: SizedBox(
                      height: Get.height*0.1,
                      width: Get.width,
                      child: ListTile(
                        leading: Text(actionS,style: TextStyles.smallBlackText,),
                        trailing: Text(typeS,style: TextStyles.smallBlackText,),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: Get.height*0.08,
                            width: Get.height*0.6,
                            child: ListTile(
                              onTap: (){
                                controller.ActionDialogueBox();
                              },
                              // tileColor: Colors.white,
                              leading: SizedBox(
                                  height: Get.height*0.08,
                                  width: Get.width*0.6,
                                  child: Text('Reduce the gap between the door  and frame on the non-hinged sideto no more than 4mm and no less than 2mm',style: TextStyles.primarySmallText,)
                              ),
                              trailing: Text('Planned',style: TextStyles.primarySmallText,),

                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
