import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20), // Space from the top
            Image.asset(
              'assets/splash_screen2.png', 
              height: 50, // Adjust the height as needed
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/onboarding2.png', 
                      height: 200, // Adjust the height as needed
                    ),
                    SizedBox(height: 20), // Space between image and text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 5, backgroundColor: Colors.orange),
                        SizedBox(width: 5),
                        CircleAvatar(radius: 5, backgroundColor: Colors.orange.shade200),
                        SizedBox(width: 5),
                        CircleAvatar(radius: 5, backgroundColor: Colors.orange.shade200),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
            'Öğünlerinizi sınıflandırarak sağlıklı beslenme hedeflerinize ulaşın',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/onboarding3');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange, // Button color
                                foregroundColor: Colors.white, // Text color
                                minimumSize: Size(double.infinity, 50), // Button size
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text('Devam Et'),
                            ),
                            TextButton(
                              onPressed: () {
                                // Handle skip action
                              },
                              child: Text('Geç', style: TextStyle(color: Colors.grey)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Space from the bottom
          ],
        ),
      ),
    );
  }
}
