# rest_api_login_registration

A new Flutter project.

## Getting Started
Get-X was used for state and route managements through this App, as it is a lightweight state manager and has minimal consumption of the device's RAM.

### External Dependencies
- get
- http
- shared_preferences


## Folder Structure
Here is the core folder structure which flutter provides.
<code>
flutter-app/
 |- android
 |- build
 |- ios
 |- lib
 |- test
 </code>
 
 Here is the folder structure I used in this project
<code> 
lib/
|- controllers/
|- utils/
|- views/
|- widgets/
|- main.dart</code>


#### SubFolders Structure

|- controllers/
<code> 
login_controller.dart
register_controller.dart</code>

|- utils/
<code>
api_endpoints.dart</code>

|- views/
<code>
auth_screen.dart
home_screen.dart</code>

|- widgets/
<code>
input_text_field.dart
login_widget.dart
register_widget.dart
submit_button.dart
</code>


## main.dart
<code>
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_login_registration/views/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  } }
</code>
  
  
  ## App Screens
  <img src="https://user-images.githubusercontent.com/120676400/214443978-50564903-ed8a-4dac-8212-47de93848e17.png" width="360" height="780">  <img src="https://user-images.githubusercontent.com/120676400/214443999-4de1f407-d7ae-49d7-a9f3-97e9f94ea0dd.png" width="360" height="780">  
