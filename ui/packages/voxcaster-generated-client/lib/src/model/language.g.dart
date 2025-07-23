// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Language extends Language {
  @override
  final String code;
  @override
  final String family;
  @override
  final String region;
  @override
  final String nameNative;
  @override
  final String nameEnglish;
  @override
  final String countryEnglish;

  factory _$Language([void Function(LanguageBuilder)? updates]) =>
      (LanguageBuilder()..update(updates))._build();

  _$Language._(
      {required this.code,
      required this.family,
      required this.region,
      required this.nameNative,
      required this.nameEnglish,
      required this.countryEnglish})
      : super._();
  @override
  Language rebuild(void Function(LanguageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LanguageBuilder toBuilder() => LanguageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Language &&
        code == other.code &&
        family == other.family &&
        region == other.region &&
        nameNative == other.nameNative &&
        nameEnglish == other.nameEnglish &&
        countryEnglish == other.countryEnglish;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, nameNative.hashCode);
    _$hash = $jc(_$hash, nameEnglish.hashCode);
    _$hash = $jc(_$hash, countryEnglish.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Language')
          ..add('code', code)
          ..add('family', family)
          ..add('region', region)
          ..add('nameNative', nameNative)
          ..add('nameEnglish', nameEnglish)
          ..add('countryEnglish', countryEnglish))
        .toString();
  }
}

class LanguageBuilder implements Builder<Language, LanguageBuilder> {
  _$Language? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _nameNative;
  String? get nameNative => _$this._nameNative;
  set nameNative(String? nameNative) => _$this._nameNative = nameNative;

  String? _nameEnglish;
  String? get nameEnglish => _$this._nameEnglish;
  set nameEnglish(String? nameEnglish) => _$this._nameEnglish = nameEnglish;

  String? _countryEnglish;
  String? get countryEnglish => _$this._countryEnglish;
  set countryEnglish(String? countryEnglish) =>
      _$this._countryEnglish = countryEnglish;

  LanguageBuilder() {
    Language._defaults(this);
  }

  LanguageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _family = $v.family;
      _region = $v.region;
      _nameNative = $v.nameNative;
      _nameEnglish = $v.nameEnglish;
      _countryEnglish = $v.countryEnglish;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Language other) {
    _$v = other as _$Language;
  }

  @override
  void update(void Function(LanguageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Language build() => _build();

  _$Language _build() {
    final _$result = _$v ??
        _$Language._(
          code:
              BuiltValueNullFieldError.checkNotNull(code, r'Language', 'code'),
          family: BuiltValueNullFieldError.checkNotNull(
              family, r'Language', 'family'),
          region: BuiltValueNullFieldError.checkNotNull(
              region, r'Language', 'region'),
          nameNative: BuiltValueNullFieldError.checkNotNull(
              nameNative, r'Language', 'nameNative'),
          nameEnglish: BuiltValueNullFieldError.checkNotNull(
              nameEnglish, r'Language', 'nameEnglish'),
          countryEnglish: BuiltValueNullFieldError.checkNotNull(
              countryEnglish, r'Language', 'countryEnglish'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
