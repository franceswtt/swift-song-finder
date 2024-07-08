// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_itunes_song_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetItunesSongListResponseImpl _$$GetItunesSongListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetItunesSongListResponseImpl(
      resultCount: (json['resultCount'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SongData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetItunesSongListResponseImplToJson(
        _$GetItunesSongListResponseImpl instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

_$SongDataImpl _$$SongDataImplFromJson(Map<String, dynamic> json) =>
    _$SongDataImpl(
      wrapperType: json['wrapperType'] as String?,
      kind: json['kind'] as String?,
      artistId: json['artistId'] as num?,
      collectionId: json['collectionId'] as num?,
      trackId: json['trackId'] as num?,
      artistName: json['artistName'] as String?,
      collectionName: json['collectionName'] as String?,
      trackName: json['trackName'] as String?,
      collectionCensoredName: json['collectionCensoredName'] as String?,
      trackCensoredName: json['trackCensoredName'] as String?,
      artistViewUrl: json['artistViewUrl'] as String?,
      collectionViewUrl: json['collectionViewUrl'] as String?,
      trackViewUrl: json['trackViewUrl'] as String?,
      previewUrl: json['previewUrl'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
    );

Map<String, dynamic> _$$SongDataImplToJson(_$SongDataImpl instance) =>
    <String, dynamic>{
      'wrapperType': instance.wrapperType,
      'kind': instance.kind,
      'artistId': instance.artistId,
      'collectionId': instance.collectionId,
      'trackId': instance.trackId,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackName': instance.trackName,
      'collectionCensoredName': instance.collectionCensoredName,
      'trackCensoredName': instance.trackCensoredName,
      'artistViewUrl': instance.artistViewUrl,
      'collectionViewUrl': instance.collectionViewUrl,
      'trackViewUrl': instance.trackViewUrl,
      'previewUrl': instance.previewUrl,
      'artworkUrl100': instance.artworkUrl100,
    };
