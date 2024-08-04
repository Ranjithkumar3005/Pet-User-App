import 'package:flutter/material.dart';
import 'package:user_app/common/constants/sizes.dart';
import 'package:user_app/common/widgets/maximum_card.dart';
import 'package:user_app/common/widgets/minimum_card.dart';
import 'package:user_app/features/home/constants/pet_details.dart';
import 'package:user_app/features/home/constants/shelter_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ranjithkumar S",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.fontSizeXLg + 2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: Sizes.iconMd,
            ),
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Pets",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.fontSizeXLg,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(minimumSize: Size(80, 50)),
                    child: Text(
                      "See all",
                      style: TextStyle(fontSize: Sizes.fontSizeMd),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:
                    210, // Set a specific height for the horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pets.length,
                  itemBuilder: (context, index) {
                    final pet = pets[index];
                    return MinimumCard(
                      name: pet['name']!,
                      imageUrl: pet['imageUrl']!,
                      description: pet['description']!,
                      age: pet['age']!,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Shelters",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.fontSizeXLg,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(minimumSize: Size(80, 50)),
                    child: const Text(
                      "See all",
                      style: TextStyle(fontSize: Sizes.fontSizeMd),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:
                    230, // Set a specific height for the horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shelters.length,
                  itemBuilder: (context, index) {
                    final shelter = shelters[index];
                    return MinimumCard(
                      name: shelter['name']!,
                      imageUrl: shelter['imageUrl']!,
                      description: shelter['location']!,
                      capacity: shelter['capacity']!,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Most featured pets",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.fontSizeXLg,
                ),
              ),
              // This ListView will take up all the remaining vertical space
              ListView.builder(
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling for this ListView
                itemCount: pets.length,
                itemBuilder: (context, index) {
                  final pet = pets[index];
                  return MaximumCard(
                    name: pet['name']!,
                    imageUrl: pet['imageUrl']!,
                    description: pet['description']!,
                    age: pet['age']!,
                    location: pet['location']!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}