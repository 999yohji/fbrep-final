import 'package:flutter/material.dart';
import '../widgets/custom_textformfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_inkwell_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPasswordObscured = true;

  void unobscureText() {
    setState(() {
      isPasswordObscured = !isPasswordObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_DARK_PRIMARY,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(25),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/profile_pictures/faker.png',
                        height: ScreenUtil().setHeight(200),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(30),
                      ),
                      CustomTextFormField(
                          height: ScreenUtil().setHeight(10),
                          width: ScreenUtil().setWidth(10),
                          controller: usernameController,
                          validator: (value) =>
                              value!.isEmpty ? 'Enter your username' : null,
                          onSaved: (value) => null,
                          fontSize: ScreenUtil().setSp(15),
                          fontColor: FB_DARK_PRIMARY,
                          hintTextSize: ScreenUtil().setSp(15),
                          hintText: 'Username'),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      CustomTextFormField(
                        isObscure:
                            isPasswordObscured, // isObscure = obscureText, isPwObs = true
                        height: ScreenUtil().setHeight(10),
                        width: ScreenUtil().setWidth(10),
                        controller: passwordController,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter your password' : null,
                        onSaved: (value) => null,
                        fontSize: ScreenUtil().setSp(15),
                        fontColor: FB_DARK_PRIMARY,
                        hintTextSize: ScreenUtil().setSp(15),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          // isPassword checks if field is a password or not
                          icon: Icon(
                            isPasswordObscured
                                ? Icons.remove_red_eye
                                : Icons.visibility_off,
                            // above line checks if isobscure is true or not, but doesnt actually know that it is because the state never changes
                            color: const Color.fromARGB(166, 0, 0, 0),
                          ),
                          onPressed: () {
                            unobscureText();
                          },
                        ),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(50)),
                      CustomInkwellButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            String username = usernameController.text;

                            Navigator.pushNamed(
                              context,
                              '/home',
                              arguments: username,
                            );
                          }
                        },
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().screenWidth,
                        buttonName: 'Login',
                        fontSize: ScreenUtil().setSp(15),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_DARK_PRIMARY,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You do not have an account? ',
                          style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: ScreenUtil().setSp(15))),
                      GestureDetector(
                        onTap: () =>
                            Navigator.popAndPushNamed(context, '/register'),
                        child: Text(
                          'Register Here',
                          style: TextStyle(
                            color: FB_LIGHT_PRIMARY,
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
  }
}
