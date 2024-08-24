import 'package:chat_app/screens/message_screen.dart';
import 'package:chat_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.8,
              decoration: const BoxDecoration(
                color: Color(0xffEC2578),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(80, 40),
                    bottomRight: Radius.elliptical(80, 40)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 65, 50, 10),
                child: Column(
                  children: [
                    Image.asset("assets/images/logo2.png"),
                    const Text(
                      "Deliver Favourite Food",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 50.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          children: [
                            const SizedBox(height: 25.0),
                            const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(height: 30.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "example@gmail.com",
                                prefixIcon: const Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: const Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            Container(
                              alignment: Alignment.topRight,
                              child: const Text(
                                "Forget Password?",
                              ),
                            ),
                            const SizedBox(height: 22.0),
                            Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (e) =>
                                                const MessageScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    backgroundColor: const Color(0xffEC2578),
                                    // minimumSize: Size(200, 60),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 85.0, vertical: 12.5),
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  )),
                            ),
                            const SizedBox(height: 15.0),
                            const Text(
                              "Or",
                              style: TextStyle(color: Color(0xffEC2578)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Tab(
                                  icon: Image.asset(
                                      "assets/images/google_logo.png"),
                                ),
                                Tab(
                                  icon: Image.asset(
                                      "assets/images/facebook_logo.png"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (e) => const SignupScreen()));
                      },
                      child: const Text("REGISTER",
                          style: TextStyle(
                              color: Color(0xffEC2578),
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}