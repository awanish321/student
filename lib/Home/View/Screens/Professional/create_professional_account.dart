



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:student/Home/View/Screens/professional/login_as_professionals_screen.dart';
import 'package:student/Home/View/widgets/bottom_navigation_bar_widget.dart';

class CreateProfessionalAccount extends StatefulWidget {
  const CreateProfessionalAccount({super.key});

  @override
  State<CreateProfessionalAccount> createState() => _CreateProfessionalAccountState();
}

class _CreateProfessionalAccountState extends State<CreateProfessionalAccount> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> studentFormKey = GlobalKey<FormState>();

  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
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

              Center(
                child: Image.asset("assets/signup.png"),
              ),

              const Text(
                "Create Professional account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 16,
              ),
        const ReadMoreText(
          'Establishing a professional account mandates a monthly payment of 49 Rs. Establishing a professional account mandates a monthly payment of 49 Rs.',
          trimMode: TrimMode.Line,
          trimLines: 1,
          colorClickableText: Colors.pink,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
          moreStyle: TextStyle(color: Colors.blue, fontSize: 14, decoration: TextDecoration.underline, decorationThickness: 2),
          lessStyle: TextStyle(color: Colors.blue, fontSize: 14, decoration: TextDecoration.underline, decorationThickness: 2),
        ),

              const SizedBox(height: 16,),

              Form(
                key: studentFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: name,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Iconsax.profile_circle,
                          color: Colors.grey,
                        ),
                        labelText: 'Your Name',
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
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Iconsax.sms,
                          color: Colors.grey,
                        ),
                        labelText: 'Email/mobile',
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
                          return 'Enter your Email Address.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Iconsax.lock_1,
                          color: Colors.grey,
                        ),
                        labelText: 'Create Password',
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


              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    value: _agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreeToTerms = value!;
                      });
                    },
                  ),
                  const Text("By Clicking here you accept", style: TextStyle(fontSize: 13),),
                  const SizedBox(width: 5,),
                  InkWell(
                    onTap: (){},
                    child: const Text(
                      "Terms & Conditions", style: TextStyle(fontSize: 13, color: Colors.blue ,decoration: TextDecoration.underline,
                        decorationThickness: 2),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                  },
                  child: const Text("Continue"),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginAsProfessionalsScreen()));
                  }, child: const Text("Login", style: TextStyle(color: Colors.blue),))
                ],
              ),

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
              const SizedBox(height: 16),

              const Center(child: Text("sign in with")),

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


            ],
          ),
        ),
      ),
    );
  }
}
