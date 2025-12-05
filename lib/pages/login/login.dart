import 'package:alatoo_ocs/pages/main_page/ocs.dart';
import 'components/my_button.dart';
import 'components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //login temp
  final Map<String, String> users = {
    "123123123": "123123123",
    "55555": "55555",
  };
  //login temp

  void openForgotPassword() async {
    final url = Uri.parse('https://my.alatoo.edu.kg/passwForgot/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  //login temp
  void signUserIn(BuildContext context) {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (users.containsKey(username) && users[username] == password) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OcsApp()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Неверный логин или пароль"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
  //login temp

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/alatoo-logo.png', width: 200, height: 200),
              const SizedBox(height: 50),
              Text(
                'Welcome to OCS Ala-Too',
                style: TextStyle(
                  color: const Color.fromARGB(255, 38, 38, 38),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: openForgotPassword,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              MyButton(onTap: () => signUserIn(context)),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
