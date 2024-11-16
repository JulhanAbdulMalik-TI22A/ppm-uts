import 'package:flutter/material.dart';
import 'package:ppm_uts_julhan/pages/home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(),
                  Text(
                    'Mahasiswa',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(15), // Tambahkan radius di sini
                child: Image.network(
                  'https://himatro.ee.unila.ac.id/wp-content/uploads/2024/07/flutter.png',
                ),
              ),
            ),
            const Spacer(flex: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Mulai"),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
