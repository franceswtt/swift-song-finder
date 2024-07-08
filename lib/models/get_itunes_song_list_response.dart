import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_itunes_song_list_response.freezed.dart';
part 'get_itunes_song_list_response.g.dart';

@freezed
class GetItunesSongListResponse with _$GetItunesSongListResponse {
  const factory GetItunesSongListResponse({
    required int? resultCount,
    required List<SongData>? results,
  }) = _GetItunesSongListResponse;

  factory GetItunesSongListResponse.fromJson(Map<String, Object?> json) =>
      _$GetItunesSongListResponseFromJson(json);
}

@freezed
class SongData extends Equatable with _$SongData {
  const factory SongData({
    required String? wrapperType,
    required String? kind,
    required num? artistId,
    required num? collectionId,
    required num? trackId,
    required String? artistName,
    required String? collectionName,
    required String? trackName,
    required String? collectionCensoredName,
    required String? trackCensoredName,
    required String? artistViewUrl,
    required String? collectionViewUrl,
    required String? trackViewUrl,
    required String? previewUrl,
    required String? artworkUrl100,
  }) = _SongData;

  const SongData._();

  factory SongData.fromJson(Map<String, Object?> json) =>
      _$SongDataFromJson(json);

  @override
  List<Object?> get props => [
        wrapperType,
        kind,
        artistId,
        collectionId,
        trackId,
        artistName,
        collectionName,
        trackName,
        collectionCensoredName,
        trackCensoredName,
        artistViewUrl,
        collectionViewUrl,
        trackViewUrl,
        previewUrl,
        artworkUrl100,
      ];
}
