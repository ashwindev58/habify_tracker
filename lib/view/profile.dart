// import 'package:flutter/material.dart';
// import 'package:habify_tracker/model/user.dart';
// import 'package:hive/hive.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//    User? _user;

//   @override
//   void initState() {
//     super.initState();
//     _fetchUser();
//   }

//   Future<void> _fetchUser() async {
//     var box = Hive.box<User>('users');
//     if (box.isNotEmpty) {
//       var firstUser = box.values.last;
//       setState(() {
//         _user = firstUser;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/image 1 (1).png'), 
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 80), // Add some space at the top
//                   Center(
//                     child: CircleAvatar(
//                       radius: 50,
//                       backgroundColor: Colors.grey[300],
//                       child: Icon(
//                         Icons.person,
//                         size: 60,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Center(
//                     child: Text(
//                        _user?.userName ?? 'Unknown User',
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 50), // Space between name and profile items
//                   ProfileItem(
//                     icon: Icons.info,
//                     text: 'About Us',
//                     onPressed: () {
//                       // Handle About Us action
//                     },
//                   ),
//                   ProfileItem(
//                     icon: Icons.privacy_tip,
//                     text: 'Privacy Policy',
//                     onPressed: () {
//                       // Handle Privacy Policy action
//                     },
//                   ),
//                   ProfileItem(
//                     icon: Icons.contact_mail,
//                     text: 'Contact Us',
//                     onPressed: () {
//                       // Handle Contact Us action
//                     },
//                   ),
//                   ProfileItem(
//                     icon: Icons.share,
//                     text: 'Share with a Friend',
//                     onPressed: () {
//                       // Handle Share action
//                     },
//                   ),
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle button press
//                     },
//                     child: const Text('New Button'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProfileItem extends StatelessWidget {
//   final IconData icon;
//   final String text;
//   final VoidCallback onPressed;

//   const ProfileItem({
//     required this.icon,
//     required this.text,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.white),
//           const SizedBox(width: 10),
//           TextButton(
//             onPressed: onPressed,
//             child: Text(
//               text,
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
