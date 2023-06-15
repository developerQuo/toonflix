import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodayToons() async {
    var client = http.Client();
    final url = Uri.parse('$baseUrl/$today');
    final response = await client.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Exception('Failed to load data');
  }
}
