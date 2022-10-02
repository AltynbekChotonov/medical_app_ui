// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ден соолугунузга,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'кам корунуз!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      )
                    ],
                  ),
                  // profile pucture
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person)),
                ],
              ),
            ),

            SizedBox(height: 25),
            // card -> how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  // animation or picture
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Lottie.network(
                        'https://assets7.lottiefiles.com/packages/lf20_ioxlu1zt.json'),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  // how do you feel + get start
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ден соолугунуз кандай?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'сөзсүз турдө медициналык картанызды толтурунуз',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'Баштоо',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(height: 10),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'издөө'),
                ),
              ),
            ),
            SizedBox(height: 15),

            // horizontal listview -> categories: dendist surgeon etc..
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryCard(
                    categoryName: 'кардиология',
                    iconImagePath: 'assets/icons/cardiogram.png',
                  ),
                  categoryCard(
                    categoryName: 'даарыкана',
                    iconImagePath: 'assets/icons/medicine.png',
                  ),
                  categoryCard(
                    categoryName: 'анализ',
                    iconImagePath: 'assets/icons/syringe.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'доктурлор тизмеси',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'баарың көрүү',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor5.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Altynbek B. ',
                  doctorProfession: 'педиатерапия',
                ),
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor1.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Eleonora A.',
                  doctorProfession: 'кардиология',
                ),
                DoctorCard(
                  doctorImagePath: 'assets/images/doctor2.jpg',
                  rating: '4.9',
                  doctorName: 'Dr. Eldiyar Eld.',
                  doctorProfession: 'терапевт',
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
