import 'package:carrodo/components/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// A combined login/signup page.
/// You can use a TabBar or conditional rendering to toggle between the two forms.
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background to match the design
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Top Skip button aligned to right
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // Add your skip action here
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              // App Title and description
              const Text(
                'Carrodo',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Premium car rentals at your fingertips.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Text(
                'Log in or sign up',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 20),
              // Mobile number input field with flag and country code
              Container(
                // This ensures the container occupies full width,
                // preventing the Row from overflowing.
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // India flag image (ensure the asset exists in your project)
                    Image.asset(
                      'assets/images/india_flag.png',
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      '+91',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    // Expanded widget makes sure the TextField uses the remaining space
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: '10-digit mobile number',
                          hintStyle: TextStyle(color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Continue Button
              GradientButton(
                  border: 20,
                  padding: 16,
                  text: "Continue",
                  onPressed: () {
                    // Add your continue action here
                  }),
              const SizedBox(height: 20),
              // OR Divider
              Row(
                children: const [
                  Expanded(child: Divider(color: Colors.white70)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR', style: TextStyle(color: Colors.white)),
                  ),
                  Expanded(child: Divider(color: Colors.white70)),
                ],
              ),
              const SizedBox(height: 20),
              // Google Login Button with SVG icon
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add Google login logic here
                  },
                  icon: SvgPicture.asset(
                    'assets/google_logo.svg', // Ensure this asset exists and is declared in pubspec.yaml
                    height: 24,
                  ),
                  label: const Text(
                    'Login with Google',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Terms of Service and Privacy Policy text
              const Text(
                'By continuing, you agree to our',
                style: TextStyle(color: Colors.white70),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Terms of Services',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text('  |  ', style: TextStyle(color: Colors.white70)),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
