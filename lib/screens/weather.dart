import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'add_crop.dart';
import 'farmer_details.dart';
import 'farmer_register.dart';
import 'home_page.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Color.fromARGB(123, 0, 0, 1),
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text(
              'Weather & Information',
              style: kMyTextStyle,
            ),
            stretch: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Current Weather',
                    style: kLargeTextStyle,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: const Color.fromARGB(123, 0, 0, 1),
                    ),
                    height: 170,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [Text('', style: kMediumTextStyle)],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Weekly Weather Forecast',
                    style: kLargeTextStyle,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: const Color.fromARGB(123, 0, 0, 1),
                    ),
                    height: 170,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [Text('', style: kMediumTextStyle)],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: const Color(0xff4db5ff),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
        unselectedItemColor: const Color(0xffcceaff),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            tooltip: 'Farmer Register',
            icon: Icon(Icons.create),
            label: 'Farmer Register',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details_rounded),
            label: 'Farmer Details',
            tooltip: 'Farmer Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_sharp),
            label: 'Add Crop',
            tooltip: 'Add Crop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloudy_snowing),
            label: 'Weather',
            tooltip: 'Weather',
          ),
        ],
        currentIndex: 4,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FarmerRegisterPage(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FarmerDetailsPage(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddCropsPage(),
              ),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WeatherPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
