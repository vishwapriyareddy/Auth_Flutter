import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart' as geoCo;
import 'package:geolocator/geolocator.dart';

String finalAddress = "Searching...";

class GenerateMaps extends ChangeNotifier {
  late Position position;
  Future getCurrentLocation() async {
    var positionData = await GeolocatorPlatform.instance.getCurrentPosition();
    final cords =
        geoCo.Coordinates(positionData.latitude, positionData.longitude);
    var address =
        await geoCo.Geocoder.local.findAddressesFromCoordinates(cords);

    String mainAddress = address.first.addressLine;
    print(mainAddress);
    finalAddress = mainAddress;
    notifyListeners();
  }
}
