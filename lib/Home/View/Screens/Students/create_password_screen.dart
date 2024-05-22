import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:student/Home/View/Screens/students/student_login_screen.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final username = TextEditingController();
  final email = TextEditingController();
  GlobalKey<FormState> studentFormKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;

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
                    child: Image.asset("assets/signup.png",)),
                // Text
                const Text(
                  "Create a New Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Enter a new password to change your forgotten password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),

                const SizedBox(height: 16),
                // TextFormFields
                Form(
                  key: studentFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: password,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Create Password',
                          hintText: 'Enter your password',
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
                          prefixIcon: const Icon(Iconsax.lock_1),
                          suffixIcon: IconButton(
                            icon: Icon(
                              color: Colors.black,
                              _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                            ),

                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),

                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: confirmPassword,
                        obscureText: _obscureText1,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Re-enter your password',
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
                          prefixIcon: const Icon(Iconsax.lock_1),
                          suffixIcon: IconButton(
                            icon: Icon(
                              color: Colors.black,
                              _obscureText1 ? Iconsax.eye_slash : Iconsax.eye,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText1 = !_obscureText1;
                              });
                            },
                          ),

                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != password.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),

                    ],
                  ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentLoginScreen()));
                      }, child: const Text("Change Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
