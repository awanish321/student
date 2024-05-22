import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/Home/View/widgets/bottom_navigation_bar_widget.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  int? _selectedPaymentMethod;
  bool _agreeToTerms = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
                "Payment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Select an Payment method to pay for professional account",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 16),
              PaymentMethodCard(
                index: 0,
                title: "Credit Card or Debit Card",
                svgAsset: "assets/svg/contactless.svg",
                isSelected: _selectedPaymentMethod == 0,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 0;
                  });
                },
              ),
              const SizedBox(height: 6),
              PaymentMethodCard(
                index: 1,
                title: "Paytm",
                svgAsset: "assets/svg/paytm-etonline.svg",
                isSelected: _selectedPaymentMethod == 1,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 1;
                  });
                },
              ),
              const SizedBox(height: 6),
              PaymentMethodCard(
                index: 2,
                title: "Phonepe",
                svgAsset: "assets/svg/phonepe_logo.svg",
                isSelected: _selectedPaymentMethod == 2,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 2;
                  });
                },
              ),
              const SizedBox(height: 6),
              PaymentMethodCard(
                index: 3,
                title: "Using UPI ID",
                svgAsset: "assets/svg/upi-logo.svg",
                isSelected: _selectedPaymentMethod == 3,
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = 3;
                  });
                },
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
                  const Text("Have a Reffral Code", style: TextStyle(fontSize: 13),),
                  const SizedBox(width: 5,),
                  InkWell(
                    onTap: (){},
                    child: const Text(
                      "Read Benefits", style: TextStyle(fontSize: 13, color: Colors.blue ,decoration: TextDecoration.underline,
                        decorationThickness: 2),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBar()));
                  },
                  child: const Text("Pay 49 Rs. INR", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),


              const SizedBox(height: 32,),
              const Text("Purchase professional account for premium features. Monthly payment of 49Rs. Subscription auto-renews unless cancelled. Terms apply.",
              textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              const SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final int index;
  final String title;
  final String svgAsset;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodCard({
    super.key,
    required this.index,
    required this.title,
    required this.svgAsset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2.5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: isSelected
              ? const BorderSide(color: Colors.blue, width: 2)
              : BorderSide.none,
        ),
        shadowColor: Colors.grey.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  svgAsset,
                  height: 50,
                  fit: BoxFit.contain,
                  width: 50,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(title),
                    ),
                    if (isSelected)
                      const Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}