import 'package:chat_app/screens/onBoard_screen2.dart';
import 'package:flutter/material.dart';

class OnboardScreen1 extends StatelessWidget {
  const OnboardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEEDA),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Image.asset(
                    "assets/images/sweets.png",
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
//#####################################################################
                const Padding(
                  padding: EdgeInsets.only(left: 60.0, right: 60.0, top: 40.0),
                  child: Text(
                    'Track your Comfort Food here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
//######################################################################
                const Padding(
                  padding:
                      EdgeInsets.only(left: 40.0, right: 40.0, bottom: 30.0),
                  child: Text(
                    'Here You Can find a chef or dish for every taste and color. Enjoy!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
//#######################################################################
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (e) => const OnboardScreen2()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Color(0xffEC2578),
                        minimumSize: const Size(200, 60),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20),
                        textStyle: const TextStyle(
                          // fontSize: ,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        "Next",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
