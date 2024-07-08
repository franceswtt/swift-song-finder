import 'package:equatable/equatable.dart';
import 'package:swift_song_finder/models/get_itunes_song_list_response.dart';

abstract class SongState extends Equatable {
  const SongState();

  @override
  List<Object> get props => [];
}

class SongInitial extends SongState {}

class SongLoading extends SongState {}

class SongLoaded extends SongState {
  final List<SongData> songs;

  const SongLoaded(this.songs);

  @override
  List<Object> get props => [songs];
}

class SongError extends SongState {
  final String message;

  const SongError(this.message);

  @override
  List<Object> get props => [message];
}

class SongNotFound extends SongState {
  const SongNotFound();

  @override
  List<Object> get props => [];
}
