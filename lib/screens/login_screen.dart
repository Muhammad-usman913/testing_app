import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/common_widgets/app_button.dart';

class LoginScreen extends StatelessWidget {
  //final String imagePath = "assets/images/welcome_image.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(120)),
                    child: Image.asset('assets/images/welcome_screen.jpeg',fit: BoxFit.fitWidth,height: 300.h,width: 375.w,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Logo2.png'),
                        SizedBox(height: 45.h,),
                        Text('Welcome Back!',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500,color: Color(0xff030F09)),)
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                    Text('Please login to continue',style: TextStyle(fontSize: 14,color: Color(0xff606060)),),
                    SizedBox(height: 47.h,),
                    SizedBox(
                      width: 325.w,
                      height: 65.h,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: 'Email address',labelStyle: TextStyle(color: Colors.grey), border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    SizedBox(
                      height: 65.h,
                      width: 325.w,
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(labelText: 'Password',suffixText: 'Forgot password?',labelStyle: TextStyle(color: Colors.grey), border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    AppButton(label: 'Login', onPressed: (){
                    }),
                    SizedBox(height: 30.h,),
                    Column(
                      children: [
                        Text('New to search?',style: TextStyle(color: Color(0xffA8A8A8),fontSize: 14.sp),),
                        SizedBox(height: 5.h,),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Center(child: Text('Create Account Here',style: TextStyle(color: Color(0xff30BE76),fontSize: 16.sp,fontWeight: FontWeight.bold),)),
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ));
  }

//   Widget icon() {
//     String iconPath = "assets/icons/app_icon.svg";
//     return SvgPicture.asset(
//       iconPath,
//       width: 48,
//       height: 56,
//     );
//   }
//
//   Widget welcomeTextWidget() {
//     return Column(
//       children: [
//         AppText(
//           text: "Welcome",
//           fontSize: 48,
//           fontWeight: FontWeight.w600,
//           color: Colors.white,
//         ),
//         AppText(
//           text: "to our store",
//           fontSize: 48,
//           fontWeight: FontWeight.w600,
//           color: Colors.white,
//         ),
//       ],
//     );
//   }
//
//   Widget sloganText() {
//     return AppText(
//       text: "Get your grecories as fast as in hour",
//       fontSize: 16,
//       fontWeight: FontWeight.w600,
//       color: Color(0xffFCFCFC).withOpacity(0.7),
//     );
//   }
//
//   Widget getButton(BuildContext context) {
//     return AppButton(
//       label: "Get Started",
//       fontWeight: FontWeight.w600,
//       padding: EdgeInsets.symmetric(vertical: 25),
//       onPressed: () {
//         onGetStartedClicked(context);
//       },
//     );
//   }
//
//   void onGetStartedClicked(BuildContext context) {
//     Navigator.of(context).pushReplacement(new MaterialPageRoute(
//       builder: (BuildContext context) {
//         return DashboardScreen();
//       },
//     ));
//   }
// }
}
