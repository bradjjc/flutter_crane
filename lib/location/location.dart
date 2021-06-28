import 'package:flutter/material.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({Key key}) : super(key: key);

  @override
  _LocationMapState createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 27, 73, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              color: Color.fromRGBO(84, 27, 73, 1),
              child: Column(
                children: [
                  Text(
                    "Khumbu Valley",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Nonstop - 5h 16m+",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0, top: 15),
                        child: ElevatedButton(
                          onPressed: () async {
                            // var currentZoomLevel = await _controller.getZoomLevel();
                            //
                            // currentZoomLevel = currentZoomLevel + 2;
                            // _controller.animateCamera(
                            //   CameraUpdate.newCameraPosition(
                            //     CameraPosition(
                            //       target: locationCoords,
                            //       zoom: currentZoomLevel,
                            //     ),
                            //   ),
                            // );
                          },
                          child: Icon(Icons.add),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 450,
            height: 685,
            child: PlatformMap(
              zoomGesturesEnabled: true,
              scrollGesturesEnabled: true,
              initialCameraPosition: CameraPosition(
                target: const LatLng(27.78368591979142, 86.75086697640052),
                zoom: 16.0,
              ),
              markers: Set<Marker>.of(
                [
                  Marker(
                    markerId: MarkerId("Khumbu Valley"),
                    position: LatLng(27.78368591979142, 86.75086697640052),
                    consumeTapEvents: true,
                    infoWindow: InfoWindow(
                      title: 'PlatformMarker',
                      snippet: "Hi I'm a Platform Marker",
                    ),
                    onTap: () {
                      print("Marker tapped");
                    },
                  ),
                ],
              ),
              mapType: MapType.satellite,
              onTap: (location) => print('onTap: $location'),
              onCameraMove: (cameraUpdate) =>
                  print('onCameraMove: $cameraUpdate'),
              compassEnabled: true,
              zoomControlsEnabled: true,
              onMapCreated: (controller) {
                Future.delayed(Duration(seconds: 2)).then(
                  (_) {
                    controller.animateCamera(
                      CameraUpdate.newCameraPosition(
                        const CameraPosition(
                          bearing: 270.0,
                          target: LatLng(27.78368591979142, 86.75086697640052),
                          tilt: 30.0,
                          zoom: 18,
                        ),
                      ),
                    );
                    controller.getVisibleRegion().then(
                        (bounds) => print("bounds: ${bounds.toString()}"));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
