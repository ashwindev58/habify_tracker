import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image 1 (1).png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    //   child: username != null
                    //       ? Align(
                    //           alignment: Alignment.topLeft,
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20),
                    //             child: Text(
                    //                user!.name,
                    //               "Hellow \n ${username!.name} ",
                    //               style: const TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 20,
                    //                 fontWeight: FontWeight.bold,
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //       : const Center(
                    //           child: CircularProgressIndicator(),
                    //         ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Image.asset(
                        'assets/images/calender.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
       
      ),
    );
  }
}

