import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.pink.shade100.withOpacity(0.6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //lady image
            SizedBox(
              height: 180,
              width: 170,
              child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_b44anj9k.json',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'How do you feel?',
                    style: themedata.textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Fill out your medical',
                    style: themedata.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                   Text(
                    'card right now',
                    style: themedata.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.deepPurple.shade400,
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
