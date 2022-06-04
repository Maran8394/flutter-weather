import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  String url;
  NetworkHelper({required this.url});
  Future getDatas() async {
    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return convert.jsonDecode(res.body);
      // dynamic temp = decodedData['main']['temp'];
      // dynamic condition = decodedData['weather'][0]['id'];
      // dynamic cityName = decodedData["name"];
    } else {
      print(res.statusCode);
    }
  }
}
