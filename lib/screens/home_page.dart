import 'package:dynamic_harvest/screens/add_crop.dart';
import 'package:dynamic_harvest/screens/farmer_details.dart';
import 'package:dynamic_harvest/screens/farmer_register.dart';
import 'package:dynamic_harvest/screens/weather.dart';
import 'package:dynamic_harvest/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User? _user = FirebaseAuth.instance.currentUser;
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
              'Dynamic Harvest Management',
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
                  Text(
                    'Hello ${_user!.displayName}',
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
                      children: const [
                        Text('Crop Progress', style: kMediumTextStyle)
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color.fromARGB(123, 0, 0, 1),
                          ),
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Advice of the Day',
                                style: kMediumTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color.fromARGB(123, 0, 0, 1),
                          ),
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'News',
                                style: kMediumTextStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
        currentIndex: 0,
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
