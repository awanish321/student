import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final username = TextEditingController();

  GlobalKey<FormState> studentFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {},
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
                      "assets/clip-reading-of-books-1.png",
                      height: 200,
                    )),

                // Text
                const Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Enter Your username to reset the password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          labelText: 'username/mobile',
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
                      onPressed: (){}, child: const Text("Continue", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
