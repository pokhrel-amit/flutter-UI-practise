import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorList extends StatelessWidget {
  final String docImagePath;
  final String docRating;
  final String docName;
  final String docProfession;
  final String docYe;
  const DoctorList({
    Key? key,
    required this.docImagePath,
    required this.docRating,
    required this.docName,
    required this.docProfession,
    required this.docYe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      width: 155,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            CircleAvatar(
              radius: 40,

              backgroundImage: AssetImage(
                docImagePath,
                
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.all(Radius.circular(80)),
            //   child: Image(
            //     height: 90,
            //     image: AssetImage(
            //       docImagePath,
            //     ),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  Text(
                    docRating,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              docName,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color(0xff32313a),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '$docProfession, $docYe y.e',
              style: themeData.textTheme.headline6,
            )
          ],
        ),
      ),
    );
  }
}
