
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johnfra/globalWidgets/dropDown.dart';

import '../../Routes/AppRoutes.dart';
import '../../core/utils/AllStrings.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';
import '../../globalWidgets/checkbox.dart';
import '../../globalWidgets/elevatedButton.dart';
import '../../globalWidgets/textfield.dart';

class HomeScreenContoller extends GetxController{
  List<Scaffold>? screens;
  int screen=0;
  bool checkbox=false;
  List questionNames=[
    'Door Details',
    'Door Assessment',
    'Door Assessment',
    'Door Status',
  ];

  @override
  void onInit() {
    screens=[
      homeScreen(),//0
      newSiteScreen(),//1
      surveysList(),//2
      questionSets(),//3
      objectDetails(),//4
    ];
    super.onInit();
  }
  List<String> otherList=[
    'david chalse',
    'mark zuk',
    'einsta',
    'LookAfter'
  ];

  //home screen or sites list screen
  Scaffold homeScreen(){
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  // side: BorderSide(color: primaryColor)
                                )
                            )
                        ),
                        onPressed: (){
                          screen=1;
                          update();
                          // Get.toNamed(Routes.createNewSite);

                        }, child: Text('ADD NEW SITE',style: TextStyles.primarySmallText,)),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Get.height*0.08,
                        width: Get.width,
                        color: primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 5,bottom: 5),
                          child: Text(choseSite,style: TextStyles.bodyText,),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: (){
                                  screen=2;
                                  update();
                                },
                                tileColor: Colors.white,
                                leading: Text('45678987654345: norway'),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //create new site
  Scaffold newSiteScreen(){
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              screen=0;
              update();
            },
            child: Icon(Icons.chevron_left)),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              CustomTextField(hintText: 'CLient Name',),

              CustomTextField(hintText: 'Property Name',),

              CustomTextField(hintText: 'Property Address',),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.camera_alt,color: primaryColor,),
                ],
              ),
              Spacer(),
              Center(child: CustomButton(text: 'Save', onPressed: () {screen=0;
              update();  },))
            ],
          ),
        ),
      ),
    );
  }
  //survey list screen
  Scaffold surveysList(){
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              screen=0;
              update();
            },
            child: Icon(Icons.chevron_left)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                // side: BorderSide(color: primaryColor)
                              )
                          )
                      ),
                      onPressed: (){
                        screen=3;// questions Set Screen
                        update();
                        // Get.toNamed(Routes.createNewSite);

                      }, child: Text('Create New Survey',style: TextStyles.primarySmallText,)),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: [

                    Container(
                      height: Get.height*0.08,
                      width: Get.width,
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 5,bottom: 5),
                        child: Text(continueOrCreateSurvey,style: TextStyles.bodyText,),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: (){
                                  screen=4;// questions Set Screen
                                  update();
                                },
                                leading: Text('Survey: Survey${(index+1).toString()}'),
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //questions set selection screen
  Scaffold questionSets(){
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              screen=2;
              update();
            },
            child: Icon(Icons.chevron_left)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height*0.05,
                  width: Get.width,
                  color: primaryColor,
                  child: Text(questionSets_,style: TextStyles.bodyText,),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Card(
                        color: Colors.white,
                        shadowColor:Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            onTap: (){
                              screen=4;
                              update();
                            },
                            leading: Text('Question Set: ${index.toString()}'),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
  //survey creation screens
  Scaffold objectDetails(){
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              screen=3;
              update();
            },
            child: Icon(Icons.chevron_left)),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,ind){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: Get.height*0.05,
                    width: Get.width,
                    color: primaryColor,
                    child: Text(questionNames[ind],style: TextStyles.bodyText,),
                  ),
                  SizedBox(
                    // height: Get.height,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 16,
                        itemBuilder: (context,index){
                          return index==2
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.25,),
                                  //
                                  // CustomTextField(width: Get.width/4,height: 30),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )
                              :index==3
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomButton(onPressed: (){}, text: 'Yes',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'No',isOutlined:true),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.25,),
                                  //
                                  // CustomTextField(width: Get.width/4,height: 30),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )// yes no
                              :index==4
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomButton(onPressed: (){}, text: 'Yes',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'No',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'NA',isOutlined:true),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.15,),
                                  // CustomTextField(width: Get.width/4,height: 30,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )//yes no na
                              :index==5
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomButton(onPressed: (){}, text: 'Yes',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'No',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'Unknwon',isOutlined:true),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.15,),
                                  // CustomTextField(width: Get.width/4,height: 30,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )//yes no unknown
                              :index==6
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomButton(onPressed: (){}, text: 'Low',isOutlined:true,color: Colors.yellow,),
                                  CustomButton(onPressed: (){}, text: 'Medium',isOutlined:true,color: Colors.green,),
                                  CustomButton(onPressed: (){}, text: 'High',isOutlined:true,color: Colors.red,),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.15,),
                                  // CustomTextField(width: Get.width/4,height: 30,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )//low medium high
                              :index==7
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.37,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomTextField(width: Get.width/4,multilines: 4,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )//multiline
                              :index==8
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width*0.30,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomButton(onPressed: (){}, text: 'Yes',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'No',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'NA',isOutlined:true),
                                  CustomButton(onPressed: (){}, text: 'UV',isOutlined:true),
                                  SizedBox(width: 10,),
                                  CustomDropdownFormField(onChange: (vl){},text: '',actionsList: ['ll','kk'],width: Get.width*0.15,),
                                  // CustomTextField(width: Get.width/4,height: 30,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )
                              :index==9
                              ?Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width/2,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomCheckBox(isChecked: checkbox, onChanged: (bool ) {
                                    checkbox=!checkbox;
                                    update();
                                  },),
                                  SizedBox(width: Get.width*0.1,)
                                  // CustomTextField(width: Get.width/4,height: 30,),
                                  // InkWell(
                                  //     onTap: customText,
                                  //     child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  // Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              )
                              :Card(
                            color: Colors.white,
                            shadowColor:Colors.black,
                                child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: Get.width/2,
                                      child: Text('Question ${(index+1).toString()}')),
                                  Spacer(),
                                  CustomTextField(width: Get.width/4,height: 30,),
                                  InkWell(
                                      onTap: customText,
                                      child: Icon(Icons.alarm,color: primaryColor,size: 30,)),
                                  Icon(Icons.camera_alt,color: primaryColor,size: 30,)
                                ],
                            ),
                          ),
                              );
                        }),
                  ),
                  // Center(
                  //   child: CustomButton(onPressed: () {
                  //     screen=5;
                  //     update();
                  //   }, text: 'Next',),
                  // )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
  // Scaffold objectAssessmentOne(){
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: InkWell(
  //           onTap: (){
  //             screen=4;
  //             update();
  //           },
  //           child: Icon(Icons.chevron_left)),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.only(left: 20.0,right: 20,top:40 ),
  //       child: SingleChildScrollView(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text('Door Assessment',style: TextStyles.bodyText,),
  //             ListView.builder(
  //                 shrinkWrap: true,
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 itemCount: 6,
  //                 itemBuilder: (context,index){
  //                   return index==3
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+1).toString()}')),
  //                         CustomDropdownFormField(text: '',actionsList: yesNoList,onChange: (value){
  //
  //                         },),
  //
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :index==5
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+1).toString()}')),
  //                         CustomDropdownFormField(text: '',actionsList: otherList,onChange: (value){
  //
  //                         },),
  //
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :index== 4
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/3,
  //                             child: Text('Question ${(index+1).toString()}')),
  //                         CustomDropdownFormField(width: Get.width*0.15,text: '',actionsList: yesNoNAList,onChange: (value){
  //
  //                         },),
  //                         SizedBox(width: 10,),
  //                         CustomDropdownFormField(width: Get.width*0.25,text: '',actionsList: otherList,onChange: (value){},),
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+1).toString()}')),
  //                         CustomTextField(width: Get.width/4,height: 30,),
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   );
  //                 }),
  //             Center(
  //               child: CustomButton(onPressed: () {
  //                 screen=6;
  //                 update();
  //               }, text: 'Next',),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  // Scaffold objectAssessmentTwo(){
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: InkWell(
  //           onTap: (){
  //             screen=5;
  //             update();
  //           },
  //           child: Icon(Icons.chevron_left)),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.only(left: 20.0,right: 20,top:40 ),
  //       child: SingleChildScrollView(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text('Door Assessment',style: TextStyles.bodyText,),
  //             ListView.builder(
  //                 shrinkWrap: true,
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 itemCount: 6,
  //                 itemBuilder: (context,index){
  //                   return index==3
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+6).toString()}')),
  //                         CustomDropdownFormField(text: '',actionsList: yesNoList,onChange: (value){
  //
  //                         },),
  //
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :index==5
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+6).toString()}')),
  //                         CustomDropdownFormField(text: '',actionsList: otherList,onChange: (value){
  //
  //                         },),
  //
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :index== 4
  //                       ?Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/3,
  //                             child: Text('Question ${(index+6).toString()}')),
  //                         CustomDropdownFormField(width: Get.width*0.15,text: '',actionsList: yesNoNAList,onChange: (value){
  //
  //                         },),
  //                         SizedBox(width: 10,),
  //                         CustomDropdownFormField(width: Get.width*0.25,text: '',actionsList: otherList,onChange: (value){},),
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   )
  //                       :Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+6).toString()}')),
  //                         CustomTextField(width: Get.width/4,height: 30,),
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   );
  //                 }),
  //             Center(
  //               child: CustomButton(onPressed: () {
  //                 screen=7;
  //                 update();
  //               }, text: 'Next',),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  // Scaffold objectStatus(){
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: InkWell(
  //           onTap: (){
  //             screen=6;
  //             update();
  //           },
  //           child: Icon(Icons.chevron_left)),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.only(left: 20.0,right: 20,top:40 ),
  //       child: SingleChildScrollView(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text('Door Status',style: TextStyles.bodyText,),
  //             ListView.builder(
  //                 shrinkWrap: true,
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 itemCount: 1,
  //                 itemBuilder: (context,index){
  //                   return Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Row(
  //                       children: [
  //                         SizedBox(
  //                             width: Get.width/2,
  //                             child: Text('Question ${(index+1).toString()}')),
  //                         CustomDropdownFormField(text: '',actionsList: otherList,onChange: (value){
  //
  //                         },),
  //
  //                         InkWell(
  //                             onTap: customText,
  //                             child: Icon(Icons.alarm,color: primaryColor,)),
  //                         Icon(Icons.camera_alt,color: primaryColor,)
  //                       ],
  //                     ),
  //                   );
  //                 }),
  //             Center(
  //               child: CustomButton(onPressed: () {
  //                 screen=0;
  //                 update();
  //               }, text: 'Next',),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }



  Future<dynamic> customText(
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
                    Text('Custom Text',style: TextStyles.smallBlackText,),
                    SizedBox(height: 10,),
                    CustomTextField(height: 100,multilines: 4,),
                    // Container(
                    //   height: Get.height*0.1,
                    //   width: Get.width,
                    //   decoration: BoxDecoration(
                    //       color: Colors.black.withOpacity(0.05),
                    //       borderRadius: BorderRadius.circular(10)
                    //   ),
                    //   child: Center(child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //     child: Text('Reduce the gap between the door  and frame on the non-hinged side to no more than 4mm and no less than 2mm',style: TextStyles.primarySmallText,),
                    //   ))
                    //   ,
                    // ),
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