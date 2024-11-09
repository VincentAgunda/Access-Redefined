class RouteModel {
  final String name;
  final String address;
  final double latitude;
  final double longitude;

  RouteModel({required this.name, required this.address, required this.latitude, required this.longitude});

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    return RouteModel(
      name: json['name'],
      address: json['address'],
      latitude: json['location']['lat'],
      longitude: json['location']['lng'],
    );
  }
}
