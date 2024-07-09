import 'package:swift_song_finder/connectors/http_base_connector.dart';
import 'package:swift_song_finder/models/get_itunes_song_list_response.dart';

class ItunesService {
  final HttpConnector _connector =
      HttpConnector(baseUrl: 'https://itunes.apple.com/');

  static const String endpoint = 'search';
  static const String term = 'Taylor+Swift';
  static const String limit = '200';
  static const String media = 'music';

  Future<GetItunesSongListResponse?> fetchSongs() async {
    final response =
        await _connector.get('$endpoint?term=$term&limit=$limit&media=$media');

    return GetItunesSongListResponse.fromJson(response);
  }
}
