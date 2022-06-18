import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/common_widgets/app_text.dart';
import 'package:recipe_app/models/recipe_item.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../Widgets/favourite_toggle_icon_widget.dart';


class CarousalReceipeScreen extends StatefulWidget {
  String? profileImageUri;
  String? recipeImageUri;
  String? recipeDescription;
  CarousalReceipeScreen({this.profileImageUri, this.recipeImageUri,this.recipeDescription, Key? key}) : super(key: key);

  @override
  State<CarousalReceipeScreen> createState() => _CarousalReceipeScreenState();
}

class _CarousalReceipeScreenState extends State<CarousalReceipeScreen> {

  double cardWidth = 295.w;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 102.w,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Image.asset('assets/images/Logo2.png',alignment: Alignment.center,),
        ),
        actions: [
          Icon(Icons.notifications_none_outlined,color: Colors.black,),
          SizedBox(width: 25.w,),
          Icon(Icons.email_outlined,color: Colors.black,),
          SizedBox(width: 25.w,)
        ],
      ),
      body: ListView.builder(
        itemCount: recipeItemList.length,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 30.h),
              child: Center(
                child: Container(
                  width: cardWidth,
                  height: 556.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    color: Colors.white,
                    elevation: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1,),
                        Stack(
                          fit: StackFit.loose,
                          children: [
                            ClipRRect(
                                 borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                child: Image.asset(recipeItemList[index].recipeImage!,fit: BoxFit.cover,height: 380.h,width: cardWidth,)),
                            Container(
                              height: 62.h,
                              width: cardWidth,
                              // decoration: BoxDecoration(
                              //  // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),)
                              // ),
                              color: Colors.white.withOpacity(0.95),
                              padding: EdgeInsets.only(left: 15.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(recipeItemList[index].profileImagUri!),
                                    radius: 24.h,
                                  ),
                                  SizedBox(width: 10.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppText(text: 'Profile Name',),
                                      Text('2h ago')
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  AppText(text: recipeItemList[index].recipeDescription,),
                                  Spacer(),
                                  FavoriteToggleIcon()
                                ],
                              ),
                              SizedBox(
                                  width: cardWidth,
                                  child: AppText(text: 'Apparently we had reached a great height in the atmosphere for the sky was...',fontSize: 14,)),

                              SizedBox(height: 20.h,),
                              Row(
                                children: [
                                  Text('32 likes'),
                                  SizedBox(width: 10.w,),
                                  Center(
                                      child: SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: Text('.'),
                                      )
                                  ),
                                  SizedBox(width: 5.w,),
                                  Text('8 Comments'),
                                  Spacer(),
                                  SizedBox(
                                    height: 26.h,
                                    child: ElevatedButton(
                                        child: Row(
                                          children: [
                                            Icon(Icons.add,color: Colors.greenAccent,),
                                            SizedBox(width: 6.w,),
                                            Text(
                                                "Save",
                                                style: TextStyle(fontSize: 14, color: Colors.greenAccent)
                                            ),
                                          ],
                                        ),
                                        
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(1),
                                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                                    side: BorderSide(color: Colors.greenAccent)
                                                )
                                            )
                                        ),
                                        onPressed: () => {
                                        openAlertBox(),
                                        }
                                    ),
                                  ),
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 20,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Save to",
                          style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: Icon(Icons.cancel),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                           )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                 Padding(
                   padding: EdgeInsets.only(left: 22.0.w),
                   child: Text('Western'),
                 ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.0.w),
                    child: Text('Quick Lunch'),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.0.w),
                    child: Text('Vegies'),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20.w),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.greenAccent,
                      ),
                      child: Text(
                        '+Add a New Cookbook',textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )

                ],
              ),
            ),
          );
        });
  }
}
