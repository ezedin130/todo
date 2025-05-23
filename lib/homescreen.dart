// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/bottom_modal.dart';
import 'package:todo/reusable_container.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffCEA5CC),
                  Color(0xffD1E3FA),
                  Color(0xffF2E2D9),
                  Color(0xff9CE5F4),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 22),
              child: Text(
                'Name',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Colors.blue[100],
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          'Today',
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.calendar_today_outlined),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text('Daily Habits',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text('Goals',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Expanded(
                    child: ListView(
                      children: [
                        ReusableContainer(
                          text: 'Pray The Morning Prayer',
                          time: '11:00',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableContainer(
                          text: 'Take A Shower',
                          time: '1:00',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableContainer(
                          text: 'Eat Breakfast',
                          time: '2:00',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableContainer(
                          text: 'Learn Flutter',
                          time: '3:00',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ReusableContainer(
                          text: 'Go To The Gym',
                          time: '4:00',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return bottom_sheet();
                      });
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber[100],
                    border: Border.all(
                      color: Colors.black,
                      width: 3.0,
                    )),
                child: Center(
                  child: Text(
                    'Number',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
