import '../constants.dart';
import '../widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_font.dart';
import '../widgets/custom_inkwell_button.dart';
import '../widgets/custom_dialogs.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController mobilenumController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  bool isPasswordMainObscured = true;
  bool isPasswordConfirmObscured = true;

  void unobscureTextMain() {
    setState(() {
      isPasswordMainObscured = !isPasswordMainObscured;
    });
  }

  void unobscureTextConfirm() {
    setState(() {
      isPasswordConfirmObscured = !isPasswordConfirmObscured;
    });
  }

  void register() {
    if (_formKey.currentState?.validate() ?? false) {
      customDialog(context,
          title: "You are now Registered",
          content: "Registration success! Redirecting back to Login page.");
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      // If validation fails, show a dialog with an error message
      customDialog(context,
          title: "Validation Error",
          content: "Please make sure all fields are filled out correctly.");
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            padding: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(25),
              ScreenUtil().setHeight(40),
              ScreenUtil().setWidth(25),
              ScreenUtil().setHeight(10),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(25),
                  ),
                  CustomFont(
                    text: 'Register Here',
                    fontSize: ScreenUtil().setSp(50),
                    fontWeight: FontWeight.bold,
                    color: FB_DARK_PRIMARY,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(25),
                  ),
                  CustomTextFormField(
                    height: ScreenUtil().setHeight(10),
                    width: ScreenUtil().setWidth(10),
                    onSaved: null,
                    fontColor: null,
                    hintText: 'First Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'First name is required';
                      }
                      return null;
                    },
                    hintTextSize: ScreenUtil().setSp(15),
                    fontSize: ScreenUtil().setSp(15),
                    controller: firstnameController,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  CustomTextFormField(
                    height: ScreenUtil().setHeight(10),
                    width: ScreenUtil().setWidth(10),
                    onSaved: null,
                    fontColor: null,
                    hintText: 'Last Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Last name is required';
                      }
                      return null;
                    },
                    hintTextSize: ScreenUtil().setSp(15),
                    fontSize: ScreenUtil().setSp(15),
                    controller: lastnameController,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  CustomTextFormField(
                    maxLength: 11,
                    keyboardType: TextInputType.number,
                    height: ScreenUtil().setHeight(10),
                    width: ScreenUtil().setWidth(10),
                    onSaved: null,
                    fontColor: null,
                    hintText: 'Mobile Number',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mobile number is required';
                      } else if (value.length != 11) {
                        return 'Mobile number must be 11 digits.';
                      }
                      return null;
                    },
                    hintTextSize: ScreenUtil().setSp(15),
                    fontSize: ScreenUtil().setSp(15),
                    controller: mobilenumController,
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  CustomTextFormField(
                    isObscure: isPasswordMainObscured,
                    height: ScreenUtil().setHeight(10),
                    width: ScreenUtil().setWidth(10),
                    onSaved: null,
                    fontColor: null,
                    hintText: 'Password',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters long.';
                      } else if (!RegExp(
                              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$')
                          .hasMatch(value)) {
                        return 'Password must contain at least one number.';
                      }
                      return null;
                    },
                    hintTextSize: ScreenUtil().setSp(15),
                    fontSize: ScreenUtil().setSp(15),
                    controller: passwordController,
                    suffixIcon: IconButton(
                      // isPassword checks if field is a password or not
                      icon: Icon(
                        isPasswordMainObscured
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        // above line checks if isobscure is true or not, but doesnt actually know that it is because the state never changes
                        color: const Color.fromARGB(166, 0, 0, 0),
                      ),
                      onPressed: () {
                        unobscureTextMain();
                      },
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  Text(
                      '(Password should be 8 characters, a mixture of letter and numbers consisting of at least one special character with Uppercase and Lowercase letters.)',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenUtil().setSp(10))),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  CustomTextFormField(
                    isObscure: isPasswordConfirmObscured,
                    hintText: 'Confirm Password',
                    height: ScreenUtil().setHeight(10),
                    width: ScreenUtil().setWidth(10),
                    onSaved: null,
                    fontColor: null,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      } else if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    hintTextSize: ScreenUtil().setSp(15),
                    fontSize: ScreenUtil().setSp(15),
                    controller: confirmpasswordController,
                    suffixIcon: IconButton(
                      // isPassword checks if field is a password or not
                      icon: Icon(
                        isPasswordConfirmObscured
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        // above line checks if isobscure is true or not, but doesnt actually know that it is because the state never changes
                        color: const Color.fromARGB(166, 0, 0, 0),
                      ),
                      onPressed: () {
                        unobscureTextConfirm();
                      },
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You have an account?',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: ScreenUtil().setSp(15))),
                      GestureDetector(
                        onTap: () =>
                            Navigator.popAndPushNamed(context, '/login'),
                        child: Text(
                          ' Login Here',
                          style: TextStyle(
                            color: FB_DARK_PRIMARY,
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(10),
                  ),
                  CustomInkwellButton(
                      onTap: () => register(),
                      height: ScreenUtil().setHeight(45),
                      width: ScreenUtil().screenWidth,
                      fontSize: ScreenUtil().setSp(15),
                      fontWeight: FontWeight.bold,
                      buttonName: 'Submit'),
                ],
              ),
            )),
      ),
    );
  }
}
