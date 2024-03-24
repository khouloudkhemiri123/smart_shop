import 'package:flutter/material.dart';
import 'package:projectb/screeens/main_screen.dart'; // Import the MainScreen

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  void openLoginpage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('Signin');
  }

  void openMainScreen(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 249, 249, 249),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  //logo pic
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'lib/images/datadoit.png',
                    height: 150,
                  ),
                  const SizedBox(height: 20),

                  //welcome back,you've been missed!!!
                  const Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Hello new user :8 ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  //user first name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 218, 212, 212),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Firstname',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //email textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 220, 216, 216),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '@ Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //password textfield
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 219, 215, 215),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //confirm password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 218, 215, 215),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'confirm Password',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  //sign in button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: GestureDetector(
                      onTap: () =>
                          openMainScreen(context), // Navigate to MainScreen
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 200, 49, 223),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 247, 247),
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  //text: sign in if already have an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not yet a member?  '),
                      GestureDetector(
                        onTap: () =>
                            openLoginpage(context), // Navigate to login page
                        child: const Text(
                          'Sign in Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 190, 104, 203),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
