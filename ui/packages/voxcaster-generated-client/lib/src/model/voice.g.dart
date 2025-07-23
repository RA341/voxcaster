// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Voice extends Voice {
  @override
  final String key;
  @override
  final String name;
  @override
  final Language language;
  @override
  final String quality;
  @override
  final int numSpeakers;
  @override
  final BuiltMap<String, int>? speakerIdMap;
  @override
  final BuiltMap<String, FileInfo> files;
  @override
  final BuiltList<String>? aliases;

  factory _$Voice([void Function(VoiceBuilder)? updates]) =>
      (VoiceBuilder()..update(updates))._build();

  _$Voice._(
      {required this.key,
      required this.name,
      required this.language,
      required this.quality,
      required this.numSpeakers,
      this.speakerIdMap,
      required this.files,
      this.aliases})
      : super._();
  @override
  Voice rebuild(void Function(VoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoiceBuilder toBuilder() => VoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Voice &&
        key == other.key &&
        name == other.name &&
        language == other.language &&
        quality == other.quality &&
        numSpeakers == other.numSpeakers &&
        speakerIdMap == other.speakerIdMap &&
        files == other.files &&
        aliases == other.aliases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, quality.hashCode);
    _$hash = $jc(_$hash, numSpeakers.hashCode);
    _$hash = $jc(_$hash, speakerIdMap.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, aliases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Voice')
          ..add('key', key)
          ..add('name', name)
          ..add('language', language)
          ..add('quality', quality)
          ..add('numSpeakers', numSpeakers)
          ..add('speakerIdMap', speakerIdMap)
          ..add('files', files)
          ..add('aliases', aliases))
        .toString();
  }
}

class VoiceBuilder implements Builder<Voice, VoiceBuilder> {
  _$Voice? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LanguageBuilder? _language;
  LanguageBuilder get language => _$this._language ??= LanguageBuilder();
  set language(LanguageBuilder? language) => _$this._language = language;

  String? _quality;
  String? get quality => _$this._quality;
  set quality(String? quality) => _$this._quality = quality;

  int? _numSpeakers;
  int? get numSpeakers => _$this._numSpeakers;
  set numSpeakers(int? numSpeakers) => _$this._numSpeakers = numSpeakers;

  MapBuilder<String, int>? _speakerIdMap;
  MapBuilder<String, int> get speakerIdMap =>
      _$this._speakerIdMap ??= MapBuilder<String, int>();
  set speakerIdMap(MapBuilder<String, int>? speakerIdMap) =>
      _$this._speakerIdMap = speakerIdMap;

  MapBuilder<String, FileInfo>? _files;
  MapBuilder<String, FileInfo> get files =>
      _$this._files ??= MapBuilder<String, FileInfo>();
  set files(MapBuilder<String, FileInfo>? files) => _$this._files = files;

  ListBuilder<String>? _aliases;
  ListBuilder<String> get aliases => _$this._aliases ??= ListBuilder<String>();
  set aliases(ListBuilder<String>? aliases) => _$this._aliases = aliases;

  VoiceBuilder() {
    Voice._defaults(this);
  }

  VoiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _name = $v.name;
      _language = $v.language.toBuilder();
      _quality = $v.quality;
      _numSpeakers = $v.numSpeakers;
      _speakerIdMap = $v.speakerIdMap?.toBuilder();
      _files = $v.files.toBuilder();
      _aliases = $v.aliases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Voice other) {
    _$v = other as _$Voice;
  }

  @override
  void update(void Function(VoiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Voice build() => _build();

  _$Voice _build() {
    _$Voice _$result;
    try {
      _$result = _$v ??
          _$Voice._(
            key: BuiltValueNullFieldError.checkNotNull(key, r'Voice', 'key'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Voice', 'name'),
            language: language.build(),
            quality: BuiltValueNullFieldError.checkNotNull(
                quality, r'Voice', 'quality'),
            numSpeakers: BuiltValueNullFieldError.checkNotNull(
                numSpeakers, r'Voice', 'numSpeakers'),
            speakerIdMap: _speakerIdMap?.build(),
            files: files.build(),
            aliases: _aliases?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'language';
        language.build();

        _$failedField = 'speakerIdMap';
        _speakerIdMap?.build();
        _$failedField = 'files';
        files.build();
        _$failedField = 'aliases';
        _aliases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Voice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
