import 'package:erptwo/core/constants/colors.dart';
import 'package:erptwo/core/shared/widgets/custom_elevated_buttons.dart';
import 'package:erptwo/core/shared/widgets/custom_text.dart';
import 'package:erptwo/core/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:core';
import 'package:email_validator/email_validator.dart';
import '../../core/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ScrollController loginPageScrollController = ScrollController();
  final AuthServices _auth = AuthServices();
  GlobalKey<FormState> logInFormKey = GlobalKey<FormState>();

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool isSecure = false;

  String? error = "";
  bool? loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: CustomText(
      //     text: "Login",
      //     fontSize: 24.0.sp,
      //     fontWeight: FontWeight.bold,
      //     color: mainFontColor,
      //   ),
      // ),
      body: SingleChildScrollView(
        controller: loginPageScrollController,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 100,
              right: 0,
              child: Image.asset(
                "assets/images/logo_blue.png",
                height: MediaQuery.of(context).size.height / 1.5,
                opacity: const AlwaysStoppedAnimation(0.3),
              ),
            ),
            Center(
              child: Form(
                key: logInFormKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70.0.h),
                      child: Container(
                        height: 580.0.h,
                        width: 450.0.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 2.0,
                            color: const Color(0xFF2B1722),
                          ),
                          color: const Color.fromARGB(255, 247, 253, 255),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 32.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/logo_blue.png',
                                      height: 50.0,
                                    ),
                                    const SizedBox(width: 10.0),
                                    CustomText(
                                      text: "Login",
                                      fontSize: 32.0.sp,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Container(
                                  height: 1.0,
                                  color: accentColor,
                                ),
                                const SizedBox(height: 20.0),
                                CustomText(
                                  textAlignment: TextAlign.left,
                                  text:
                                      "You are going to login to your ERP system. Use your credentials.",
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.bold,
                                  color: mainFontColor,
                                ),
                                const SizedBox(height: 60.0),
                                CustomTextFormField(
                                  showLabel: false,
                                  fillColor: white,
                                  onChanged: (value) {
                                    setState(() {
                                      error = "";
                                    });
                                  },
                                  prefix: const Icon(
                                    Icons.email,
                                    color: secondaryColor,
                                  ),
                                  hintText: "Email",
                                  controller: emailTextEditingController,
                                  validator: (value) {
                                    if (value != "") {
                                      if (EmailValidator.validate(value!) ==
                                          true) {
                                        return null;
                                      } else {
                                        return "Enter a correct Email address";
                                      }
                                    }
                                    if (value == "") {
                                      return "Enter your Email Address";
                                    }
                                    return null;
                                  },
                                  borderWidth: 2.0,
                                ),
                                const SizedBox(height: 20.0),
                                CustomTextFormField(
                                  showLabel: false,
                                  fillColor: white,
                                  onChanged: (value) {
                                    setState(() {
                                      error = "";
                                    });
                                  },
                                  prefix: const Icon(
                                    Icons.password,
                                    color: secondaryColor,
                                  ),
                                  validator: (value) => value!.isEmpty
                                      ? 'Enter the password'
                                      : null,
                                  hintText: "Password",
                                  secure: isSecure,
                                  suffix: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isSecure = !isSecure;
                                      });
                                    },
                                    icon: isSecure == false
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: accentColor,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: accentColor,
                                          ),
                                  ),
                                  controller: passwordTextEditingController,
                                  borderWidth: 2.0,
                                ),
                                error != ""
                                    ? Column(
                                        children: [
                                          const SizedBox(height: 10.0),
                                          CustomText(
                                            textAlignment: TextAlign.left,
                                            text: error!,
                                            fontSize: 12.0.sp,
                                            color: Colors.redAccent,
                                          ),
                                        ],
                                      )
                                    : const SizedBox(),
                                const SizedBox(height: 30.0),
                                TextButton(
                                  onPressed: () {},
                                  child: CustomText(
                                    text: "Forgot your password?",
                                    fontSize: 14.0.sp,
                                    color: accentColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 40.0),
                                PositiveElevatedButton(
                                  label: "Login",
                                  isLoading: loading,
                                  backgroundColor: secondaryColor,
                                  onPressed: () async {
                                    if (logInFormKey.currentState!.validate()) {
                                      setState(() => loading = true);
                                      // print(emailTextEditingController.text);
                                      // print(passwordTextEditingController.text);
                                      dynamic result = await _auth
                                          .signInWithEmailAndPassword(
                                        email: emailTextEditingController.text,
                                        password:
                                            passwordTextEditingController.text,
                                      );

                                      if (result == null) {
                                        setState(() {
                                          error =
                                              'Can Not Log-in With Those Credentials';
                                          loading = false;
                                        });
                                      } else {
                                        setState(() => loading = false);
                                      }
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
