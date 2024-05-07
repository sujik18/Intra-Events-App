import 'package:flutter/material.dart';
import 'package:intra_events/model/event.dart';
import 'package:intra_events/styleguide.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      margin: const EdgeInsets.symmetric( vertical: 10,),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), //Card circular border
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                event.imagePath,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0,),
              child: Row(children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.title,
                        style: eventTitleTextStyle,
                      ),
                      const SizedBox(height: 10,),
                      FittedBox(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.black,
                              size: 20,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              event.location,
                              style: eventLocationTextStyle
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    event.duration,
                    textAlign: TextAlign.right,
                    style: eventLocationTextStyle.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
