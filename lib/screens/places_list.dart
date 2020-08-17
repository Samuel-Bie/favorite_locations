import 'package:favorite_locations/screens/add_place.dart';
import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite Places'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () =>
                Navigator.pushNamed(context, AddPlaceScreen.routeName),
          )
        ],
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
