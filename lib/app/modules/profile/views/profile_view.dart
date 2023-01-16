import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F1F1),
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF1B1D28),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1B1D28),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Color(0xFF1B1D28),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Muhammad Hamzah",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Software Engineer/ Programmer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF22215B).withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xFFFF317B),
                    ),
                    child: const Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: Get.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "My Folders",
                          style: TextStyle(
                            color: Color(0xFF22215B),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/icons/add.png"),
                              Image.asset("assets/icons/settings.png"),
                              Image.asset("assets/icons/arrow_right.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CardFolders(
                          image: "assets/icons/folder_blue.png",
                          iconOption: "assets/icons/more_option_blue.png",
                          title: "Mobile Apps",
                          date: "December 20.2020",
                          backgroundColor: Color(0xFFEEF7FE),
                          colorPrimary: Color(0xFF415EB6),
                        ),
                        CardFolders(
                          image: "assets/icons/folder_yellow.png",
                          iconOption: "assets/icons/more_option_yellow.png",
                          title: "SVG Icons",
                          date: "December 20.2020",
                          backgroundColor: Color(0xFFFFFBEC),
                          colorPrimary: Color(0xFFFFB110),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CardFolders(
                          image: "assets/icons/folder_red.png",
                          iconOption: "assets/icons/more_option_red.png",
                          title: "Prototypes",
                          date: "December 20.2020",
                          backgroundColor: Color(0xFFFEEEEE),
                          colorPrimary: Color(0xFFAC4040),
                        ),
                        CardFolders(
                          image: "assets/icons/folder_teal.png",
                          iconOption: "assets/icons/more_option_teal.png",
                          title: "Avatars",
                          date: "December 20.2020",
                          backgroundColor: Color(0xFFF0FFFF),
                          colorPrimary: Color(0xFF23B0B0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Recently Uploaded",
                          style: TextStyle(
                            color: Color(0xFF22215B),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset("assets/icons/sort.png"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/icons/word_icon.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: const Text(
                        "Projects.docx",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF22215B),
                        ),
                      ),
                      subtitle: Text(
                        "November 22.2020",
                        style: TextStyle(
                          color: const Color(0xFF22215B).withOpacity(0.6),
                        ),
                      ),
                      trailing: Text(
                        "300kb",
                        style: TextStyle(
                          color: const Color(0xFF22215B).withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// UNTUK CARD MY FOLDERS
class CardFolders extends StatelessWidget {
  const CardFolders({
    Key? key,
    required this.image,
    required this.iconOption,
    required this.title,
    required this.date,
    required this.backgroundColor,
    required this.colorPrimary,
  }) : super(key: key);

  final String image;
  final String iconOption;
  final String title;
  final String date;
  final Color backgroundColor;
  final Color colorPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image),
                Image.asset(iconOption),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(
                color: colorPrimary,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              date,
              style: TextStyle(
                color: colorPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
