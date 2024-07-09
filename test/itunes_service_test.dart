import 'package:flutter_test/flutter_test.dart';
import 'package:swift_song_finder/services/itunes_service.dart';

void main() {
  final itunesService = ItunesService();
  test('ItunesService Tests', () async {
    final response = await itunesService.fetchSongs();
    // Check if the response body is not null
    expect(response, isNotNull);

    // Check if the 'resultCount' is greater than zero
    expect(response?.resultCount, greaterThan(0));

    // Check if the first track has an 'artistName' of 'Taylor Swift'
    final results = response?.results ?? const [];
    if (results.isNotEmpty) {
      expect(results[0].artistName, 'Taylor Swift');
    }
  });
}
