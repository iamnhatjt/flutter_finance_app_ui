import 'package:fllutter_finance_app_ui/pages/home_page.dart';
import 'package:fllutter_finance_app_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email =
      TextEditingController(text: 'Jttrinh@gmail.com');
  TextEditingController password = TextEditingController(text: 'jttrinh1234');
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fhan3-4.fna.fbcdn.net/v/t1.6435-9/140290915_437865950682192_1964329534499699411_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=Ghz4sas2eGcAX_fHui6&tn=mxzdeOm-xk-gztVe&_nc_ht=scontent.fhan3-4.fna&oh=00_AfCVtzzET2v8PioyQYavYYQmOFV0DzECerrDHboHpwFyFA&oe=63F50D4E"),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(color: white, spreadRadius: 10, blurRadius: 3),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, bottom: 5, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email address",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xff67727d)),
                  ),
                  TextField(
                    controller: _email,
                    cursorColor: black,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: black),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        prefixIconColor: black,
                        hintText: "Email",
                        border: InputBorder.none),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    color: grey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, bottom: 5, right: 20),
              child: Column(
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xff67727d),
                    ),
                  ),
                  TextField(
                    obscureText: obscureText,
                    controller: password,
                    cursorColor: black,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: black),
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        prefixIconColor: Colors.black,
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            obscureText = !obscureText;
                          }),
                          icon: const Icon(Icons.remove_red_eye_outlined),
                        ),
                        suffixIconColor: black,
                        hintText: "Password",
                        border: InputBorder.none),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: buttoncolor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "signup",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
