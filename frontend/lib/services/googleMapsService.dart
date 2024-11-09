import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/routeModel.dart';

class GoogleMapsService {
  final String apiKey = 'YOUR_GOOGLE_MAPS_API_KEY';

  Future<List<RouteModel>> getRouteSuggestions(String searchQuery) async {
    final response = await http.get(
      Uri.parse('https://maps.googleapis.com/maps/api/place/textsearch/json?query=$searchQuery&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> results = json.decode(response.body)['results'];
      return results.map((data) => RouteModel.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load route suggestions');
    }
  }
}
