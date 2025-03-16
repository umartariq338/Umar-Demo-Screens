import 'package:containers/view/instagram_homepage.dart';
import 'package:containers/view/instagram_loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InstagramSignuppage());
}

class InstagramSignuppage extends StatelessWidget {
  const InstagramSignuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'BalooPaaji2-Bold',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 320,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print("Log in with Facebook clicked");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Log in with Facebook'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "-----------------------  OR  -----------------------",
                      style:
                          TextStyle(color: Color.fromARGB(255, 155, 153, 153)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration:
                          InputDecoration(hintText: "Mobile Number or Email"),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(hintText: "Full Name"),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(hintText: "Username"),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        print("Sign up clicked");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstagramHomeApp()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Sign up'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 320,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do You have a Account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstagramLogin()));
                      },
                      child: const Text('Login in',
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/Google Play.png', height: 40),
                  const SizedBox(width: 10),
                  Image.asset('images/Microsoft Store.png', height: 40),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Text(
                    'Meta · About · Blog · Jobs · Help · API · Privacy · Terms · Locations · Instagram Lite · Threads · Contact Uploading & Non-Users · Meta Verified',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '© 2025 Instagram from Meta',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
