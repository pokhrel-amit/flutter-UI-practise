import 'package:flutter/material.dart';
import 'package:flutter_ui_practise/widgets/doctor_card.dart';
import 'package:flutter_ui_practise/widgets/doctor_category.dart';
import 'package:flutter_ui_practise/widgets/doctor_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FaIcon(FontAwesomeIcons.house),
            FaIcon(FontAwesomeIcons.message),
            FaIcon(FontAwesomeIcons.bell),
            FaIcon(FontAwesomeIcons.newspaper),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: themedata.textTheme.headline2,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Amit Pokhrel',
                        style: themedata.textTheme.headline1,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: const Icon(Icons.person),
                    backgroundColor: Colors.deepPurple.shade100,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              //doctor card
              const DoctorCard(),
              //search box
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                          hintText: 'How can we help you?'),
                    ),
                  ),
                ),
              ),
              //horizontal list view
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DoctorCategory(
                        categoryName: 'Dentist',
                        iconPath: 'assets/icons/tooth.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DoctorCategory(
                        categoryName: 'Surgeon',
                        iconPath: 'assets/icons/surgeon.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DoctorCategory(
                        categoryName: 'Urology',
                        iconPath: 'assets/icons/urology.png',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DoctorCategory(
                        iconPath: 'assets/icons/neurology.png',
                        categoryName: 'Neurology',
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: themedata.textTheme.headline4,
                  ),
                  Text(
                    'See all',
                    style: themedata.textTheme.headline6,
                  )
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 180,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DoctorList(
                        docImagePath: 'assets/images/doctor1.jpg',
                        docName: 'Dr. Amit Pokhrel',
                        docProfession: 'Therapist',
                        docRating: '8.8',
                        docYe: '10',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DoctorList(
                        docImagePath: 'assets/images/doctor4.jpg',
                        docName: 'Dr. Sahas Pokhrel',
                        docProfession: 'Dental',
                        docRating: '7.8',
                        docYe: '8',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      DoctorList(
                        docImagePath: 'assets/images/doctor3.jpg',
                        docName: 'Dr. Sagar Bhandari',
                        docProfession: 'Psychologist',
                        docRating: '8.8',
                        docYe: '12',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
