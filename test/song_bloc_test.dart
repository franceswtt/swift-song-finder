import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:swift_song_finder/bloc/song/song_bloc.dart';
import 'package:swift_song_finder/bloc/song/song_event.dart';
import 'package:swift_song_finder/bloc/song/song_state.dart';
import 'package:swift_song_finder/constants/sorting.dart';
import 'package:swift_song_finder/models/get_itunes_song_list_response.dart';
import 'package:swift_song_finder/services/itunes_service.dart';

// Generate a MockItunesService using the build_runner and mockito
import 'song_bloc_test.mocks.dart';

@GenerateMocks([ItunesService])
void main() {
  late MockItunesService mockItunesService;
  late SongBloc songBloc;

  setUp(() {
    mockItunesService = MockItunesService();
    songBloc = SongBloc(itunesService: mockItunesService);
  });

  tearDown(() {
    songBloc.close();
  });

  group('SongBloc Tests', () {
    const song1 = SongData(
      wrapperType: 'track',
      kind: 'song',
      artistId: 1,
      collectionId: 1,
      trackId: 1,
      artistName: 'Taylor Swift',
      collectionName: 'Album 1',
      trackName: 'Track 1',
      collectionCensoredName: 'Album',
      trackCensoredName: 'Track',
      artistViewUrl: 'http://example.com',
      collectionViewUrl: 'http://example.com',
      trackViewUrl: 'http://example.com',
      previewUrl: 'http://example.com',
      artworkUrl100: 'http://example.com',
    );
    const song2 = SongData(
      wrapperType: 'track',
      kind: 'song',
      artistId: 1,
      collectionId: 1,
      trackId: 1,
      artistName: 'Taylor Swift',
      collectionName: 'Album 2',
      trackName: 'Track 2',
      collectionCensoredName: 'Album',
      trackCensoredName: 'Track',
      artistViewUrl: 'http://example.com',
      collectionViewUrl: 'http://example.com',
      trackViewUrl: 'http://example.com',
      previewUrl: 'http://example.com',
      artworkUrl100: 'http://example.com',
    );
    final songList = [song1, song2];

    blocTest<SongBloc, SongState>(
      'emits [SongLoading, SongLoaded] when FetchSongs is added and service returns song list',
      build: () {
        when(mockItunesService.fetchSongs())
            .thenAnswer((_) async => GetItunesSongListResponse(
                  resultCount: 2,
                  results: songList,
                ));
        return songBloc;
      },
      act: (bloc) => bloc.add(FetchSongs()),
      expect: () => [
        SongLoading(),
        SongLoaded(songList),
      ],
      verify: (_) {
        verify(mockItunesService.fetchSongs()).called(1);
      },
    );

    blocTest<SongBloc, SongState>(
      'emits [SongLoading, SongError] when FetchSongs is added and service throws exception',
      build: () {
        when(mockItunesService.fetchSongs())
            .thenThrow(Exception('Failed to fetch songs'));
        return songBloc;
      },
      act: (bloc) => bloc.add(FetchSongs()),
      expect: () => [
        SongLoading(),
        const SongError('Failed to fetch songs'),
      ],
    );

    blocTest<SongBloc, SongState>(
      'emits [SongLoaded] with filtered songs when SearchSongs is added',
      build: () {
        songBloc.add(FetchSongs());
        when(mockItunesService.fetchSongs())
            .thenAnswer((_) async => GetItunesSongListResponse(
                  resultCount: 2,
                  results: songList,
                ));
        return songBloc;
      },
      act: (bloc) {
        bloc.add(FetchSongs());
        bloc.add(const SearchSongs(query: 'Track 1'));
      },
      expect: () => [
        SongLoading(),
        SongLoaded(songList),
        const SongLoaded([song1]),
      ],
    );

    blocTest<SongBloc, SongState>(
      'emits [SongLoaded] with sorted songs when SortSongs is added',
      build: () {
        songBloc.add(FetchSongs());
        when(mockItunesService.fetchSongs())
            .thenAnswer((_) async => GetItunesSongListResponse(
                  resultCount: 2,
                  results: songList,
                ));
        return songBloc;
      },
      act: (bloc) {
        bloc.add(FetchSongs());
        bloc.add(const SortSongs(sorting: Sorting.byAlbumName));
      },
      expect: () => [
        SongLoading(),
        SongLoaded(songList),
        const SongLoaded([song1, song2]),
      ],
    );
  });
}
