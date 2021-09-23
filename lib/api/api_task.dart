import 'dart:convert';
import 'package:http/http.dart' as http;
import 'image.dart';

class NetworkHelper {

  var _url = 'https://picsum.photos/v2/list';

   Future<List<ImageData>> getPhotos() async {
  try {
  http.Response response = await http.get(Uri.parse(_url),);
  if (response.statusCode == 200) {
  List <ImageData>list = parsePhotos(response.body);
  return list;
  } else {
  throw Exception("Error");
  }
  } catch (e) {
  throw Exception(e.toString());
  }
  }

  // Parse the JSON response and return list of Album Objects //
  List<ImageData> parsePhotos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<ImageData>((json) => ImageData.fromJson(json)).toList();
  }
  }

// var _url = 'https://picsum.photos/v2/list';
// http.Response response = await http.get(Uri.parse(_url),);





