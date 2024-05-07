import 'package:flutter/material.dart';
//import 'package:intra_events/ui/payment.dart';
import 'package:provider/provider.dart';

import '../../model/event.dart';
import '../../model/guest.dart';
import '../../styleguide.dart';

class EventDetailsContent extends StatelessWidget {
  const EventDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth* 0.2),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.24),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "-",
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 15,
                  ),
                 const SizedBox(
                    width: 5,
                  ),
                  Text(
                    event.location,
                    style: eventLocationTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "GUESTS",
              style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final guest in guests)
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: event.punchLine1, style: punchLine1TextStyle,),
                  TextSpan(text: event.punchLine2, style: punchLine2TextStyle,),
                ]
              ),
            ),
          ),
          if (event.description.isNotEmpty) Padding(
            padding: const EdgeInsets.all(16),
            child: Text(event.description, style: eventLocationTextStyle,),
          ),
          if (event.galleryImages.isNotEmpty) Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
            child: Text(
              "GALLERY",
              style: guestTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (final galleryImagePath in event.galleryImages)
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          // add a fixed button at the bottom of the screen which  has width equal to the screen width and text "REGISTER NOW"
          GestureDetector(
            // onTap: () => Navigator.of(context).push(
            //                       MaterialPageRoute(
            //                           builder: (context) =>
            //                               Payment()),
            //                     ),
            child: Container(
              width: screenWidth,
              margin: EdgeInsets.only(top:2, bottom: screenWidth * 0.1, left: 12, right: 12),
              height: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(40)) //BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              ),
              child: const Text(
                "REGISTER NOW",
              ),
            ),
          ),
          //const SizedBox(height: 50,)
        ],
        
      ),
      
    );
    
  }
}
