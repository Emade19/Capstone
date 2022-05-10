import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_home/widget/text_field.dart';
import 'package:repair_home/Screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  des() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffeeedf3),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    image: AssetImage('assets/logo-white.jpg')
                ),
                const Text(
                  "REPAIR HOME",
                  style: TextStyle(
                      color: Color(0xffff1f319d),
                      fontWeight: FontWeight.bold,
                      fontSize: 45, fontFamily: 'goboldthin'),
                ),
                const Text(
                  "Login to your account",
                  style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                      fontSize: 24, fontFamily: 'gotham'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ApptextField(
                  title: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ApptextField(
                  title: "Password",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white, fontSize: 17, fontFamily: 'gotham'),
                        ),
                        style: ButtonStyle(
                          // textStyle:
                          //     MaterialStateProperty.all(TextStyle(color: Colors.pink)),
                          backgroundColor:
                          MaterialStateProperty.all(const Color(0xffff1f319d)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.black38, fontFamily: 'gotham'),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      ".Or sign in with-",
                      style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontFamily: 'gotham'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.blueAccent,
                      child: const Text(
                        "Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.blue,
                      child: const Text(
                        "Twitter",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.green,
                      child: const Text(
                        "Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      ".Don't have an account?",
                      style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontFamily: 'gotham'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SignupScreen())),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: const Color(0xffff8C95CB), fontWeight: FontWeight.bold, fontFamily: 'gotham'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}