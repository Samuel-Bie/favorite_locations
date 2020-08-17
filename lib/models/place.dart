import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });

  Place copyWith({
    String id,
    String title,
    PlaceLocation location,
    File image,
  }) {
    return Place(
      id: id ?? this.id,
      title: title ?? this.title,
      location: location ?? this.location,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'location': location?.toMap(),
    };
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Place(
      id: map['id'],
      title: map['title'],
      location: PlaceLocation.fromMap(map['location']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) => Place.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Place(id: $id, title: $title, location: $location, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Place &&
      o.id == id &&
      o.title == title &&
      o.location == location &&
      o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      location.hashCode ^
      image.hashCode;
  }
}






class PlaceLocation {
  final double latitude;
  final double longitute;
  final String address;

  PlaceLocation({
    @required this.latitude,
    @required this.longitute,
    this.address,
  });

  PlaceLocation copyWith({
    double latitude,
    double longitute,
    String address,
  }) {
    return PlaceLocation(
      latitude: latitude ?? this.latitude,
      longitute: longitute ?? this.longitute,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitute': longitute,
      'address': address,
    };
  }

  factory PlaceLocation.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PlaceLocation(
      latitude: map['latitude'],
      longitute: map['longitute'],
      address: map['address'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceLocation.fromJson(String source) => PlaceLocation.fromMap(json.decode(source));

  @override
  String toString() => 'PlaceLocation(latitude: $latitude, longitute: $longitute, address: $address)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PlaceLocation &&
      o.latitude == latitude &&
      o.longitute == longitute &&
      o.address == address;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitute.hashCode ^ address.hashCode;
}
