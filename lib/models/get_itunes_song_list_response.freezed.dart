// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_itunes_song_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetItunesSongListResponse _$GetItunesSongListResponseFromJson(
    Map<String, dynamic> json) {
  return _GetItunesSongListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetItunesSongListResponse {
  int? get resultCount => throw _privateConstructorUsedError;
  List<SongData>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetItunesSongListResponseCopyWith<GetItunesSongListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetItunesSongListResponseCopyWith<$Res> {
  factory $GetItunesSongListResponseCopyWith(GetItunesSongListResponse value,
          $Res Function(GetItunesSongListResponse) then) =
      _$GetItunesSongListResponseCopyWithImpl<$Res, GetItunesSongListResponse>;
  @useResult
  $Res call({int? resultCount, List<SongData>? results});
}

/// @nodoc
class _$GetItunesSongListResponseCopyWithImpl<$Res,
        $Val extends GetItunesSongListResponse>
    implements $GetItunesSongListResponseCopyWith<$Res> {
  _$GetItunesSongListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: freezed == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SongData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetItunesSongListResponseImplCopyWith<$Res>
    implements $GetItunesSongListResponseCopyWith<$Res> {
  factory _$$GetItunesSongListResponseImplCopyWith(
          _$GetItunesSongListResponseImpl value,
          $Res Function(_$GetItunesSongListResponseImpl) then) =
      __$$GetItunesSongListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? resultCount, List<SongData>? results});
}

/// @nodoc
class __$$GetItunesSongListResponseImplCopyWithImpl<$Res>
    extends _$GetItunesSongListResponseCopyWithImpl<$Res,
        _$GetItunesSongListResponseImpl>
    implements _$$GetItunesSongListResponseImplCopyWith<$Res> {
  __$$GetItunesSongListResponseImplCopyWithImpl(
      _$GetItunesSongListResponseImpl _value,
      $Res Function(_$GetItunesSongListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetItunesSongListResponseImpl(
      resultCount: freezed == resultCount
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SongData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetItunesSongListResponseImpl implements _GetItunesSongListResponse {
  const _$GetItunesSongListResponseImpl(
      {required this.resultCount, required final List<SongData>? results})
      : _results = results;

  factory _$GetItunesSongListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetItunesSongListResponseImplFromJson(json);

  @override
  final int? resultCount;
  final List<SongData>? _results;
  @override
  List<SongData>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetItunesSongListResponse(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetItunesSongListResponseImpl &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, resultCount, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetItunesSongListResponseImplCopyWith<_$GetItunesSongListResponseImpl>
      get copyWith => __$$GetItunesSongListResponseImplCopyWithImpl<
          _$GetItunesSongListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetItunesSongListResponseImplToJson(
      this,
    );
  }
}

abstract class _GetItunesSongListResponse implements GetItunesSongListResponse {
  const factory _GetItunesSongListResponse(
          {required final int? resultCount,
          required final List<SongData>? results}) =
      _$GetItunesSongListResponseImpl;

  factory _GetItunesSongListResponse.fromJson(Map<String, dynamic> json) =
      _$GetItunesSongListResponseImpl.fromJson;

  @override
  int? get resultCount;
  @override
  List<SongData>? get results;
  @override
  @JsonKey(ignore: true)
  _$$GetItunesSongListResponseImplCopyWith<_$GetItunesSongListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SongData _$SongDataFromJson(Map<String, dynamic> json) {
  return _SongData.fromJson(json);
}

/// @nodoc
mixin _$SongData {
  String? get wrapperType => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  num? get artistId => throw _privateConstructorUsedError;
  num? get collectionId => throw _privateConstructorUsedError;
  num? get trackId => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  String? get trackName => throw _privateConstructorUsedError;
  String? get collectionCensoredName => throw _privateConstructorUsedError;
  String? get trackCensoredName => throw _privateConstructorUsedError;
  String? get artistViewUrl => throw _privateConstructorUsedError;
  String? get collectionViewUrl => throw _privateConstructorUsedError;
  String? get trackViewUrl => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;
  String? get artworkUrl100 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongDataCopyWith<SongData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongDataCopyWith<$Res> {
  factory $SongDataCopyWith(SongData value, $Res Function(SongData) then) =
      _$SongDataCopyWithImpl<$Res, SongData>;
  @useResult
  $Res call(
      {String? wrapperType,
      String? kind,
      num? artistId,
      num? collectionId,
      num? trackId,
      String? artistName,
      String? collectionName,
      String? trackName,
      String? collectionCensoredName,
      String? trackCensoredName,
      String? artistViewUrl,
      String? collectionViewUrl,
      String? trackViewUrl,
      String? previewUrl,
      String? artworkUrl100});
}

/// @nodoc
class _$SongDataCopyWithImpl<$Res, $Val extends SongData>
    implements $SongDataCopyWith<$Res> {
  _$SongDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? kind = freezed,
    Object? artistId = freezed,
    Object? collectionId = freezed,
    Object? trackId = freezed,
    Object? artistName = freezed,
    Object? collectionName = freezed,
    Object? trackName = freezed,
    Object? collectionCensoredName = freezed,
    Object? trackCensoredName = freezed,
    Object? artistViewUrl = freezed,
    Object? collectionViewUrl = freezed,
    Object? trackViewUrl = freezed,
    Object? previewUrl = freezed,
    Object? artworkUrl100 = freezed,
  }) {
    return _then(_value.copyWith(
      wrapperType: freezed == wrapperType
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as num?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as num?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as num?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionCensoredName: freezed == collectionCensoredName
          ? _value.collectionCensoredName
          : collectionCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackCensoredName: freezed == trackCensoredName
          ? _value.trackCensoredName
          : trackCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistViewUrl: freezed == artistViewUrl
          ? _value.artistViewUrl
          : artistViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionViewUrl: freezed == collectionViewUrl
          ? _value.collectionViewUrl
          : collectionViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackViewUrl: freezed == trackViewUrl
          ? _value.trackViewUrl
          : trackViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl100: freezed == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongDataImplCopyWith<$Res>
    implements $SongDataCopyWith<$Res> {
  factory _$$SongDataImplCopyWith(
          _$SongDataImpl value, $Res Function(_$SongDataImpl) then) =
      __$$SongDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? wrapperType,
      String? kind,
      num? artistId,
      num? collectionId,
      num? trackId,
      String? artistName,
      String? collectionName,
      String? trackName,
      String? collectionCensoredName,
      String? trackCensoredName,
      String? artistViewUrl,
      String? collectionViewUrl,
      String? trackViewUrl,
      String? previewUrl,
      String? artworkUrl100});
}

/// @nodoc
class __$$SongDataImplCopyWithImpl<$Res>
    extends _$SongDataCopyWithImpl<$Res, _$SongDataImpl>
    implements _$$SongDataImplCopyWith<$Res> {
  __$$SongDataImplCopyWithImpl(
      _$SongDataImpl _value, $Res Function(_$SongDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wrapperType = freezed,
    Object? kind = freezed,
    Object? artistId = freezed,
    Object? collectionId = freezed,
    Object? trackId = freezed,
    Object? artistName = freezed,
    Object? collectionName = freezed,
    Object? trackName = freezed,
    Object? collectionCensoredName = freezed,
    Object? trackCensoredName = freezed,
    Object? artistViewUrl = freezed,
    Object? collectionViewUrl = freezed,
    Object? trackViewUrl = freezed,
    Object? previewUrl = freezed,
    Object? artworkUrl100 = freezed,
  }) {
    return _then(_$SongDataImpl(
      wrapperType: freezed == wrapperType
          ? _value.wrapperType
          : wrapperType // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as num?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as num?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as num?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackName: freezed == trackName
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionCensoredName: freezed == collectionCensoredName
          ? _value.collectionCensoredName
          : collectionCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      trackCensoredName: freezed == trackCensoredName
          ? _value.trackCensoredName
          : trackCensoredName // ignore: cast_nullable_to_non_nullable
              as String?,
      artistViewUrl: freezed == artistViewUrl
          ? _value.artistViewUrl
          : artistViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionViewUrl: freezed == collectionViewUrl
          ? _value.collectionViewUrl
          : collectionViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      trackViewUrl: freezed == trackViewUrl
          ? _value.trackViewUrl
          : trackViewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artworkUrl100: freezed == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongDataImpl extends _SongData {
  const _$SongDataImpl(
      {required this.wrapperType,
      required this.kind,
      required this.artistId,
      required this.collectionId,
      required this.trackId,
      required this.artistName,
      required this.collectionName,
      required this.trackName,
      required this.collectionCensoredName,
      required this.trackCensoredName,
      required this.artistViewUrl,
      required this.collectionViewUrl,
      required this.trackViewUrl,
      required this.previewUrl,
      required this.artworkUrl100})
      : super._();

  factory _$SongDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongDataImplFromJson(json);

  @override
  final String? wrapperType;
  @override
  final String? kind;
  @override
  final num? artistId;
  @override
  final num? collectionId;
  @override
  final num? trackId;
  @override
  final String? artistName;
  @override
  final String? collectionName;
  @override
  final String? trackName;
  @override
  final String? collectionCensoredName;
  @override
  final String? trackCensoredName;
  @override
  final String? artistViewUrl;
  @override
  final String? collectionViewUrl;
  @override
  final String? trackViewUrl;
  @override
  final String? previewUrl;
  @override
  final String? artworkUrl100;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongDataImplCopyWith<_$SongDataImpl> get copyWith =>
      __$$SongDataImplCopyWithImpl<_$SongDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongDataImplToJson(
      this,
    );
  }
}

abstract class _SongData extends SongData {
  const factory _SongData(
      {required final String? wrapperType,
      required final String? kind,
      required final num? artistId,
      required final num? collectionId,
      required final num? trackId,
      required final String? artistName,
      required final String? collectionName,
      required final String? trackName,
      required final String? collectionCensoredName,
      required final String? trackCensoredName,
      required final String? artistViewUrl,
      required final String? collectionViewUrl,
      required final String? trackViewUrl,
      required final String? previewUrl,
      required final String? artworkUrl100}) = _$SongDataImpl;
  const _SongData._() : super._();

  factory _SongData.fromJson(Map<String, dynamic> json) =
      _$SongDataImpl.fromJson;

  @override
  String? get wrapperType;
  @override
  String? get kind;
  @override
  num? get artistId;
  @override
  num? get collectionId;
  @override
  num? get trackId;
  @override
  String? get artistName;
  @override
  String? get collectionName;
  @override
  String? get trackName;
  @override
  String? get collectionCensoredName;
  @override
  String? get trackCensoredName;
  @override
  String? get artistViewUrl;
  @override
  String? get collectionViewUrl;
  @override
  String? get trackViewUrl;
  @override
  String? get previewUrl;
  @override
  String? get artworkUrl100;
  @override
  @JsonKey(ignore: true)
  _$$SongDataImplCopyWith<_$SongDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
