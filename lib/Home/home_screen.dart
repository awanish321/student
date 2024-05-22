import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share/share.dart';
import 'package:student/Home/View/Screens/profile_screen.dart';

import 'View/Screens/student_login_screen.dart';
import 'View/widgets/notification_screen.dart';

final List<Map<String, dynamic>> dummyUsers = [
  {
    'image': 'assets/images/user.jpg',
    'name': 'Arun Rawat',
    'followers': '435 followers',
    'time': '6h',
    'questionTitle': 'How to insert larger number (over 100 million) of dummy records into database table quickly',
    'questionText':
    'For testing purpose I need to insert over 100 million records to a table. What is the best way to do it?',
    'answers': '234 answers suggested',
  },
  {
    'image': 'assets/Anuj-Rawat.webp',
    'name': 'Anuj Rawat',
    'followers': '435 followers',
    'time': '6h',
    'questionTitle': 'How to insert larger number (over 100 million) of dummy records into database table quickly',
    'questionText':
    'For testing purpose I need to insert over 100 million records to a table. What is the best way to do it?',
    'answers': '234 answers suggested',
  },
  {
    'image':"assets/images/review_profile_image_1.jpg",
    'name': 'Shivani Tomar',
    'followers': '32k followers',
    'time': '6h',
    'questionTitle': "How can I generate test files with specific extensions and sizes for my application's upload feature?",
    'questionText':
    'I need to generate files with different extensions like .jpg, .png, .pdf, .csv, .docx, .xslx etc. So I can test them.',
    'answers': '234 answers suggested',
  },
  {
    'image':"assets/Israeli-Gal-Gadot-2019.webp",
    'name': 'Gal Gadot',
    'followers': '32k followers',
    'time': '6h',
    'questionTitle': "How can I generate test files with specific extensions and sizes for my application's upload feature?",
    'questionText':
    'I need to generate files with different extensions like .jpg, .png, .pdf, .csv, .docx, .xslx etc. So I can test them.',
    'answers': '234 answers suggested',
  },
  {
    'image' : 'assets/images/review_profile_image_2.jpeg',
    'name': 'Arun Rawat',
    'followers': '435 followers',
    'time': '6h',
    'questionTitle': 'How to insert larger number (over 100 million) of dummy records into database table quickly',
    'questionText':
    'For testing purpose I need to insert over 100 million records to a table. What is the best way to do it?',
    'answers': '234 answers suggested',
  },
  {
    'image' : 'assets/images/review_profile_image_3.jpeg',
    'name': 'Shivam Saktawat',
    'followers': '435 followers',
    'time': '6h',
    'questionTitle': 'How to insert larger number (over 100 million) of dummy records into database table quickly',
    'questionText':
    'For testing purpose I need to insert over 100 million records to a table. What is the best way to do it?',
    'answers': '234 answers suggested',
  },
  {
    'image' : 'assets/mike-tyson.webp',
    'name' : 'Vikas Dhawal',
    'followers' : '78k followers',
    'time' : '20h',
    'questionTitle' : 'How to insert larger number (over 100 million) of dummy records into database table quickly',
    'questionText':
        '-- For testing purpose I need to insert larger number (over 500 million) of dummy records into database table quickly in no time. It must happen instantly.',
    'answers':'720 answers suggested'
  },
  {
    'image' : 'assets/images/review_profile_image_3.jpeg',
    'name' : 'Ravi Shankar Pandey',
    'followers' : '500k',
    'time':'24h',
    'questionTitle': '#How to insert larger number(over 1000 million) of dummy records into the database table quickly and more efficiently?',
    'questionText' : '---For testing purpose I need to insert larger number over 1000 million of dummy records into database table quickly.',
    'answers' : '1000 answers suggested'
  }
];

class UserWidget extends StatelessWidget {
  final Map<String, dynamic> userData;

  const UserWidget({super.key, required this.userData});

  void shareDetails(BuildContext context,) {
    const String text = 'Hello';
    Share.share(text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(userData['image'] ?? ""),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userData['name'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          userData['followers'],
                          style: const TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            Text(
                              '${userData['time']} . ',
                              style:
                              const TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                            const Icon(
                              Icons.timelapse_rounded,
                              size: 10,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: (){},
                    borderRadius: BorderRadius.circular(100),
                    // child: Image.asset("assets/icons/Group 25.png")
                  child: SvgPicture.asset("assets/svg/user-avatar.svg", height: 28, color: Colors.blue,),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            userData['questionTitle'],
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            userData['questionText'],
            style: const TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Suggest Answers to help me.. ✋✋✋"),
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Suggest Answer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text(
                  userData['answers'],
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                InkWell(
                    onTap: (){
                      shareDetails(context);
                    },
                    // child: Image.asset("assets/icons/send 1.png")
                  child: SvgPicture.asset("assets/svg/send.svg", height: 20,),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showCustomDialog();
    });
  }

  void _showCustomDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 300,
              child: SimpleDialog(
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 600,
                      maxWidth: 800
                      // maxWidth:
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Welcome!",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  "Ritik",
                                  style: TextStyle(fontSize: 20,),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.1)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Image.asset(
                                    "assets/icons8-delete-50.png",
                                    height: 15,
                                    width: 15,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor: Colors.blue
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
                                },
                                child: const Text(
                                  "Setup Your Profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                )
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        elevation: 50,
       clipBehavior: Clip.antiAliasWithSaveLayer,
        width: 197,
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                    }, icon: const Icon(Iconsax.home_1)),
                    const Text("HOME")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentLoginScreen()));
                    },icon: const Icon(Iconsax.logout),),
                    const Text("LOGOUT")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          // child: Image.asset("assets/icons/menu 1.png"),
          
          
          child: Padding(
            padding: const EdgeInsets.only(left: 26),
            child: SvgPicture.asset("assets/svg/menu.svg", color: Colors.blue, width: 5,),
          ),
        ),
        backgroundColor: Colors.white,
        title: TextField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            hintText: "Search",
            // suffixIcon: Image.asset("assets/icons/magnifying-glass 1.png"),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right:  8),
              child: SvgPicture.asset("assets/svg/magnifying-glass.svg",height: 1),
            ),
            border: InputBorder.none,
            fillColor: Colors.grey.withOpacity(0.1),
            filled: true,
          ),
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsScreen()));
            },
            child: Image.asset(
              "assets/icons/Group 238.png",
              height: 50,
              width: 50,
            ),
            // child: Padding(
            //   padding: const EdgeInsets.only(right: 20),
            //   child: SvgPicture.asset("assets/svg/notification.svg", height: 30,),
            // ),
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) {
          return const SizedBox(height: 5);
        },
        itemCount: dummyUsers.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return UserWidget(userData: dummyUsers[index]);
        },
      ),
    );
  }
}
