import 'package:dynamic_harvest/screens/home_page.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bckg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 56,
                  )
                ],
              ),
              const Text(
                'Dynamic Harvest Management:',
                style: kHeadingTextStyle,
              ),
              const Text(
                'Optimize Your Farming with Ease',
                style: kHeadingTextStyle,
              ),
              const SizedBox(height: 16),
              const Text(
                'Streamline Your Crop Management',
                style: kLargeTextStyle,
              ),
              const SizedBox(height: 16),
              const Text(
                'Introducing Dynamic Harvest Management Solution, the revolutionary mobile app that will transform the way you manage your crops. ',
                style: kNormalTextStyle,
              ),
              const SizedBox(height: 16),
              MaterialButton(
                color: const Color(0xff1aa0ff),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text(
                  'Get Started now',
                  style: kMyTextStyle,
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
