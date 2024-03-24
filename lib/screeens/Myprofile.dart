import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('              Edit Profile',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("lib/images/femaleicon.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      // TODO: Implement profile picture edit functionality
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          buildTextField('Full Name', Icons.person, nameController),
          SizedBox(height: 30),
          buildTextField('Email', Icons.email, emailController),
          SizedBox(height: 30),
          buildTextField('Phone Nmb', Icons.phone, phoneController),
          SizedBox(height: 30),
          buildTextField('Password', Icons.lock, passwordController),
          const SizedBox(height: 30),
          ElevatedButton(
            child: const Text('Edit Profile'),
            onPressed: () {
              // TODO: Implement profile edit functionality
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 244, 142, 41),
              onPrimary: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Joined  14 mars 2024',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildTextField(
      String label, IconData icon, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
      ),
      obscureText: label == 'Password' ? true : false,
    );
  }
}
