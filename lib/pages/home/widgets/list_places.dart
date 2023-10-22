import 'package:flutter/material.dart';
import 'package:vascom/models/place.model.dart';
import 'package:vascom/widgets/default_place_card.dart';

class ListPlaces extends StatelessWidget {
  const ListPlaces({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: places.length,
      itemBuilder: (_, index) {
        final place = places[index];
        return DefaultPlaceCard(place: place);
      },
    );
  }
}
