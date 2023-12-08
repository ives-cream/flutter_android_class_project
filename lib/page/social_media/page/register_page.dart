import 'package:android_class/page/social_media/components/my_button.dart';
import 'package:android_class/page/social_media/components/my_textfield.dart';
import 'package:android_class/page/social_media/helper/helper_function.dart';
import 'package:android_class/untils/color_matching.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // https://www.youtube.com/watch?v=zohXXZBUVYI&t=3s

  // 使用者名稱
  final TextEditingController usernameController = TextEditingController();
  // Email
  final TextEditingController emailController = TextEditingController();
  // 密碼
  final TextEditingController passwordController = TextEditingController();
  // 確認密碼
  final TextEditingController confirmPwController = TextEditingController();

  // register meth od
  void registerUser() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    // make sure passwords match
    if (passwordController.text != confirmPwController.text) {
      // pop leading circle
      Navigator.pop(context);

      // show error message to user
      displayMessageToUser("Passwords don't math", context);
    }
    // if passwords do match
    else {
      // try creating the user
      try {
        // create the user
        UserCredential? userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        // 使用await時該function需要加async
        // pop leading circle
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        // pop leading circle
        Navigator.pop(context);

        //  display error message to user
        displayMessageToUser(e.code, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Social Media"),
        backgroundColor: ColorMatchings.color2_5,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25.0),

              // app name
              Text(
                "M I N I M A L",
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 25.0),

              // username text field
              MyTextField(
                lateText: "Username",
                obscureText: false,
                controller: usernameController,
              ),
              const SizedBox(height: 10.0),

              // email text field
              MyTextField(
                lateText: "Email",
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 10.0),

              // password text field
              MyTextField(
                lateText: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              const SizedBox(height: 10.0),

              // confirm password text field
              MyTextField(
                lateText: "Confirm Password",
                obscureText: true,
                controller: confirmPwController,
              ),

              // forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25.0),

              // register in button
              MyButton(
                text: "Register",
                onTap: registerUser,
              ),
              const SizedBox(height: 25.0),

              // already have an account? Register here
              Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login Here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
