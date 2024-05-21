import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student/Home/View/Screens/create_student_account.dart';
import 'package:student/Home/View/Screens/reset_password_screen.dart';

import '../widgets/bottom_navigation_bar_widget.dart';
import 'login_with_username_or_mobile.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({super.key});

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  final username = TextEditingController();
  final email = TextEditingController();
  GlobalKey<FormState> studentFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.2)),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 25,
                        color: Colors.blue,
                      ))),
                ),

                // Logo Icon
                Center(
                    child: SvgPicture.asset(
                  "assets/logoipsum-297.svg",
                  height: 30,
                  width: 30,
                )),

                // Image
                Center(
                    child: Image.asset(
                  "assets/student_login.png",
                )),
                // SvgPicture.asset("assets/student_login.svg",),

                // Text
                const Text(
                  "Login as Student",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16),
                // TextFormFields
                Form(
                  key: studentFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: username,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail_outline_rounded,
                            color: Colors.grey,
                          ),
                          labelText: 'username',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.cyanAccent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your name.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock_outlined,
                            color: Colors.grey,
                          ),
                          labelText: 'password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.cyanAccent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password.';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),

                // Forgot Password and Login With OTP Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                        },
                        child: const Text(
                          'forgot password?',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginWithOTPScreen()));
                        },
                        child: const Text(
                          'Login with OTP',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 5
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: 16,),

                // Login Button
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                      }, child: const Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.5,
                      width: 100,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    const SizedBox(width: 7,),
                    const Text("or", style: TextStyle(color: Colors.grey, fontSize: 14),),
                    const SizedBox(width: 7,),
                    Container(
                      height: 1.5,
                      width: 100,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                const Center(child: Text("sign in with", style: TextStyle(fontWeight: FontWeight.w500),)),
                const SizedBox(height: 16,),

                // SIGN IN WITH GOOGLE AND FACEBOOK
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      // borderRadius: ,
                        child: Image.asset("assets/search.png", height: 40,)),
                    const SizedBox(width: 40,),
                    InkWell(child: Image.asset("assets/facebook.png", height: 40,))
                  ],
                ),
                const SizedBox(height: 16,),
                const Center(child: Text("Don't have an account?")),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.blue, width: 1.5),
                            borderRadius: BorderRadius.circular(10)),

                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateStudentAccount()));
                        }, child: const Text("Create an account", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),)),
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
