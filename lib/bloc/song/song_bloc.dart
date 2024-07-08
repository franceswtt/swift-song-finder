import 'package:bloc/bloc.dart';
import 'package:swift_song_finder/constants/sorting.dart';
import 'package:swift_song_finder/models/get_itunes_song_list_response.dart';
import 'package:swift_song_finder/services/itunes_service.dart';

import 'song_event.dart';
import 'song_state.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  final ItunesService itunesService;

  List<SongData> _songs = [];
  List<SongData> _filteredSongs = [];
  Sorting _sorting = Sorting.byTrackName; // default sorting

  SongBloc({
    required this.itunesService,
  }) : super(SongInitial()) {
    on<FetchSongs>(_onFetchSongs);
    on<SearchSongs>(_onSearchSongs);
    on<SortSongs>(_onSortSongs);
  }

  void _onFetchSongs(FetchSongs event, Emitter<SongState> emit) async {
    emit(SongLoading());
    try {
      final response = await itunesService.fetchSongs();
      _songs = response.results ?? const [];
      _filteredSongs = List.from(_songs);
      _applySorting();
      emit(SongLoaded(_filteredSongs));
    } catch (e) {
      emit(const SongError('Failed to fetch songs'));
    }
  }

  void _onSearchSongs(SearchSongs event, Emitter<SongState> emit) {
    final query = event.query.toLowerCase();
    _filteredSongs = _songs.where((song) {
      return (song.trackName ?? '').toLowerCase().contains(query) ||
          (song.collectionName ?? '').toLowerCase().contains(query);
    }).toList();
    if (_filteredSongs.isEmpty) {
      emit(const SongNotFound());
    } else {
      _applySorting();
      emit(SongLoaded(_filteredSongs));
    }
  }

  void _onSortSongs(SortSongs event, Emitter<SongState> emit) {
    _sorting = event.sorting;
    if (_filteredSongs.isEmpty) {
      emit(const SongNotFound());
    } else {
      _applySorting();
      emit(SongLoaded(_filteredSongs));
    }
  }

  void _applySorting() {
    _filteredSongs.sort((a, b) {
      final aTrackName = a.trackName ?? '';
      final bTrackName = b.trackName ?? '';
      if (_sorting == Sorting.byTrackName) {
        if (aTrackName.isEmpty || bTrackName.isEmpty) {
          return 0;
        }
        return aTrackName.compareTo(bTrackName);
      } else {
        final aCollectionName = a.collectionName ?? '';
        final bCollectionName = b.collectionName ?? '';
        if (aCollectionName.isEmpty || bCollectionName.isEmpty) {
          return 0;
        }
        return aCollectionName.compareTo(bCollectionName);
      }
    });
  }
}
