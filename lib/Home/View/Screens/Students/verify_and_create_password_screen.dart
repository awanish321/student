import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'create_password_screen.dart';

class VerifyAndCreatePasswordScreen extends StatefulWidget {
  const VerifyAndCreatePasswordScreen({super.key});

  @override
  State<VerifyAndCreatePasswordScreen> createState() => _VerifyAndCreatePasswordScreenState();
}

class _VerifyAndCreatePasswordScreenState extends State<VerifyAndCreatePasswordScreen> {
  late List<TextEditingController> _otpControllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _otpControllers = List.generate(4, (_) => TextEditingController());
    _focusNodes = List.generate(4, (_) => FocusNode());
    _configureFocusListeners();
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _configureFocusListeners() {
    for (var i = 0; i < _otpControllers.length; i++) {
      _otpControllers[i].addListener(() {
        if (_otpControllers[i].text.length == 1) {
          if (i < _otpControllers.length - 1) {
            _focusNodes[i + 1].requestFocus();
          }
        } else if (_otpControllers[i].text.isEmpty) {
          if (i > 0) {
            _focusNodes[i - 1].requestFocus();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/logoipsum-297.svg',
                    height: 30,
                  ),
                ),
                Center(
                  child: Image.asset("assets/otp.png",
                  )
                ),
                const SizedBox(height: 16),
                const Text(
                  'Verify OTP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'an OTP has sent to',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  children: [
                    const Text(
                      'ashutoshpatil@gmail.com',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/edit.png",
                      height: 15,
                    )
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _otpControllers.length,
                        (index) => Row(
                      children: [
                        if (index != 0) const SizedBox(width: 8, child: Text('-')),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Center(
                              child: TextField(
                                controller: _otpControllers[index],
                                focusNode: _focusNodes[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24),
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Center(
                  child: Text(
                    "Didn't receive the OTP?",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend",
                        style: TextStyle(fontSize: 14, color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text("in 23s")
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatePasswordScreen()));
                    },
                    child: const Text(
                      'Verify & Create Password',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}