// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class Profile extends StatelessWidget {
//   const Profile({Key? key}) : super(key: key);
//   static const id = 'profile';
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 115,
//             width: 115,
//             child: Stack(
//               fit: StackFit.expand,
//               clipBehavior: Clip.none,
//               children: [
//                 CircleAvatar(
//                   backgroundImage:
//                       AssetImage("assets/images/Profile Image.png"),
//                 ),
//                 Positioned(
//                   right: -16,
//                   bottom: 0,
//                   child: SizedBox(
//                     height: 46,
//                     width: 46,
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           side: BorderSide(color: Colors.white),
//                         ),
//                         primary: Colors.white,
//                         backgroundColor: Color(0xFFF5F6F9),
//                       ),
//                       onPressed: () {},
//                       child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           ProfileMenu(
//             text: "My Account",
//             icon: "assets/icons/User Icon.svg",
//             press: () => {},
//           ),
//           ProfileMenu(
//             text: "Notifications",
//             icon: "assets/icons/Bell.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Settings",
//             icon: "assets/icons/Settings.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Help Center",
//             icon: "assets/icons/Question mark.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Log Out",
//             icon: "assets/icons/Log out.svg",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//     ;
//   }
// }
