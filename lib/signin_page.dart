import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    bool _isNotValidate = false;

    void openSignup(BuildContext context) {
      Navigator.of(context).pushReplacementNamed('signup');
    }

    void signIn() {
      // Validate form fields
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        // Update _isNotValidate to true if any field is empty
        _isNotValidate = true;
      } else {
        // Otherwise, set it to false
        _isNotValidate = false;
        // Here you can use emailController.text and passwordController.text
        // to send data to your backend for authentication
      }
    }

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
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'lib/images/datadoit.png',
                    height: 150,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'SIGN IN',
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
                    'Welcome back',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 226, 226),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '@ Email',
                            errorText:
                                _isNotValidate && emailController.text.isEmpty
                                    ? 'Enter proper info'
                                    : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 227, 224, 224),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            errorText: _isNotValidate &&
                                    passwordController.text.isEmpty
                                ? 'Enter proper info'
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 44),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        // Call signIn function to validate and sign in
                        signIn();
                        // Update the UI to reflect validation
                        // This is necessary to make the error messages appear when necessary
                        // You may consider using setState or a state management solution
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 231, 138, 245),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Color.fromARGB(255, 252, 247, 247),
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not yet a member?  '),
                      GestureDetector(
                        onTap: () => openSignup(context),
                        child: const Text(
                          'Sign up Now',
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
