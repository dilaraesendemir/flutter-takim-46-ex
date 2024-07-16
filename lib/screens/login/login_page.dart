import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Space from the top
            Image.asset(
              'assets/splash_screen2.png',
              height: 50, // Adjust the height as needed
            ),
            Spacer(flex: 2),
            Image.asset('assets/login.png'),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı veya E-posta',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Şifre',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {
                    // Toggle password visibility
                  },
                ),
              ),
              obscureText: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Forgot password logic
                },
                child: Text('Şifreni mi unuttun?'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Login logic
              },
              child: Text('Giriş Yap'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Text('ya da'),
            ElevatedButton(
              onPressed: () {
                // Login logic
              },
              child: Text('Google ile Giriş Yap'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              style: TextButton.styleFrom(
                foregroundColor:
                    Colors.black, // Match this color to "ya da" text color
              ),
              child: Text('Hesabın yok mu? Kayıt ol!'),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
