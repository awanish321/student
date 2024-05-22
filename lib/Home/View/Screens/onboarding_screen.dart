import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/Home/View/Screens/professional/login_as_professionals_screen.dart';
import 'package:student/Home/View/Screens/students/student_login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/logoipsum-297.svg",
                    height: 25,
                    width: 25,
                  ),
                  const Text("Welcome!", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                  const Text("The tagline will be here...", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  const SizedBox(height: 32,),
                  Center(child: Image.asset("assets/onboarding.png",)),
                  const Center(
                    child: Text("I am a", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                  const SizedBox(height: 16,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentLoginScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset("assets/icons/user-graduate 1.png"),
                                SvgPicture.asset("assets/svg/student.svg", height: 26, color: Colors.blue,),
                                const SizedBox(width: 16,),
                                const Text("Student", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            const SizedBox(height: 4,),
                            const Text("Schooling / Under Graduate", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginAsProfessionalsScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset("assets/icons/user-graduate 1 (1).png"),
                                SvgPicture.asset("assets/svg/briefcase.svg", height: 26, color: Colors.blue,),
                                const SizedBox(width: 16,),
                                const Text("Professionals", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            const SizedBox(height: 4,),
                            const Text("Working Professionals", style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
