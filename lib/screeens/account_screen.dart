import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:projectb/screeens/Myprofile.dart';
import 'package:projectb/screeens/main_screen.dart';
import 'package:projectb/screeens/package/project11/screeens/alert_dialog.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class AccountScreen extends StatelessWidget {
  String title = 'AlertDialog';

  AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
              top: 39), // Adjust the top padding as needed
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.chevron_left),
                iconSize: 40,
                padding: const EdgeInsets.all(2),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
              ),
              const Text(
                '                   Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 80),
          ListTile(
            leading: const Icon(Icons.account_circle,
                size: 30, color: Colors.orange),
            title: const Text('My Account'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileEdit()),
              );
            },
          ),
          const SizedBox(height: 45), // Add SizedBox
          ListTile(
            leading:
                const Icon(Icons.notifications, size: 30, color: Colors.orange),
            title: const Text('Notifications'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
          const SizedBox(height: 45), // Add SizedBox
          ListTile(
            leading: const Icon(Icons.settings, size: 30, color: Colors.orange),
            title: const Text('Settings'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              AppSettings.openAppSettings(
                  type: AppSettingsType.device, asAnotherTask: true);
            },
          ),
          const SizedBox(height: 45), // Add SizedBox
          ListTile(
            leading: const Icon(Icons.help, size: 30, color: Colors.orange),
            title: const Text('Help Center'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle the tap
            },
          ),
          const SizedBox(height: 45), // Add SizedBox
          ListTile(
            leading:
                const Icon(Icons.exit_to_app, size: 30, color: Colors.orange),
            title: const Text('Log Out'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              final action = await AlertDialogs.yesCancelDialog(
                  context, 'log_out', 'are you sure?');
            },
          ),
        ],
      ),
    );
  }
}
