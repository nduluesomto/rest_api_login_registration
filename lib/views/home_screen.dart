import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_login_registration/views/auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences? prefs = await _prefs;
                prefs?.clear();
                Get.offAll(const AuthScreen());
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome to Homepage',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 60),
              TextButton(
                  onPressed: () async {
                    final SharedPreferences? prefs = await _prefs;
                    print(prefs?.get('token'));
                  },
                  child: const Text('Print Token'))
            ],
          ),
        ),
      ),
    );
  }
}
