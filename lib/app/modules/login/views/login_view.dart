import 'package:clone_dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // BACKGROUND IMAGE
          SizedBox(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                // IMAGE HEADER
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/pic-1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome to ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF22215B),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  width: 220,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data\n\n\nJoin For Free.",
                    style: TextStyle(
                      letterSpacing: 0.1,
                      color: Color(0xFF7B7F9E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // BUTTON SMART ID AND SIGN IN
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Get.to(const ProfileView());
                        Get.to(() => const ProfileView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEEF7FE),
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/finger.png"),
                          const SizedBox(width: 10),
                          const Text(
                            "Smart Id",
                            style: TextStyle(
                              color: Color(0xFF567DF4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Get.to(const ProfileView());
                        Get.to(() => const ProfileView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF567DF4),
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Image.asset("assets/icons/arrow.png"),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                const Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ig_logo.png"),
                    const SizedBox(width: 50),
                    Image.asset("assets/icons/twt_logo.png"),
                    const SizedBox(width: 50),
                    Image.asset("assets/icons/fb_logo.png"),
                  ],
                ),
                const SizedBox(height: 40),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1B1D28),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
