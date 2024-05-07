import 'package:flutter/material.dart';
import 'package:intra_events/model/event.dart';
import 'package:intra_events/ui/event_details/event_details_background.dart';
import 'package:intra_events/ui/event_details/event_details_content.dart';
import 'package:provider/provider.dart';

class EventDetailsPage extends StatelessWidget{
  const EventDetailsPage({super.key, required this.event});
  final Event event;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          children: <Widget>[
            const EventDetailsBackground(),
            EventDetailsContent(),
          ]
        ),
      )
    );
  }
}