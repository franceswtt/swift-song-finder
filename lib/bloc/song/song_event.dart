import 'package:equatable/equatable.dart';
import 'package:swift_song_finder/constants/sorting.dart';

abstract class SongEvent extends Equatable {
  const SongEvent();

  @override
  List<Object> get props => [];
}

class FetchSongs extends SongEvent {}

class SearchSongs extends SongEvent {
  final String query;

  const SearchSongs(this.query);

  @override
  List<Object> get props => [query];
}

class SortSongs extends SongEvent {
  final Sorting sorting;

  const SortSongs(this.sorting);

  @override
  List<Object> get props => [sorting];
}
