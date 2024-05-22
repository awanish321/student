import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:student/Home/View/Screens/professional/create_professional_account.dart';
import 'package:student/Home/View/Screens/professional/login_as_professionals_screen.dart';
import 'package:student/Home/View/Screens/professional/verify_otp.dart';


class LoginWithUsernameMobile extends StatefulWidget {
  const LoginWithUsernameMobile ({super.key});

  @override
  State<LoginWithUsernameMobile> createState() => _State();
}

class _State extends State<LoginWithUsernameMobile> {
  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final email = TextEditingController();
    GlobalKey<FormState> studentFormKey = GlobalKey<FormState>();

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
                  // child: SvgPicture.asset("assets/otp.svg")
                  child: Image.asset("assets/student_login.png"),
                ),

                // Text
                const Text(
                  "Login as Professional",
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
                            Iconsax.sms,
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
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPVerificationPage()));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfessionalOTPVerificationScreen()));
                      }, child: const Text("Send OTP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                ),
                Center(child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginAsProfessionalsScreen()));
                }, child: const Text("Login with Password", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))),
                const SizedBox(height: 16,),
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
                const SizedBox(height: 32,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfessionalAccount()));
                      }, child: const Text("Create an account", style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),)),
                ),

                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
