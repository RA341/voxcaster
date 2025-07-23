// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voices_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VoicesListResponse extends VoicesListResponse {
  @override
  final BuiltList<Voice> voices;
  @override
  final int total;

  factory _$VoicesListResponse(
          [void Function(VoicesListResponseBuilder)? updates]) =>
      (VoicesListResponseBuilder()..update(updates))._build();

  _$VoicesListResponse._({required this.voices, required this.total})
      : super._();
  @override
  VoicesListResponse rebuild(
          void Function(VoicesListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoicesListResponseBuilder toBuilder() =>
      VoicesListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VoicesListResponse &&
        voices == other.voices &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voices.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VoicesListResponse')
          ..add('voices', voices)
          ..add('total', total))
        .toString();
  }
}

class VoicesListResponseBuilder
    implements Builder<VoicesListResponse, VoicesListResponseBuilder> {
  _$VoicesListResponse? _$v;

  ListBuilder<Voice>? _voices;
  ListBuilder<Voice> get voices => _$this._voices ??= ListBuilder<Voice>();
  set voices(ListBuilder<Voice>? voices) => _$this._voices = voices;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  VoicesListResponseBuilder() {
    VoicesListResponse._defaults(this);
  }

  VoicesListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voices = $v.voices.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VoicesListResponse other) {
    _$v = other as _$VoicesListResponse;
  }

  @override
  void update(void Function(VoicesListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VoicesListResponse build() => _build();

  _$VoicesListResponse _build() {
    _$VoicesListResponse _$result;
    try {
      _$result = _$v ??
          _$VoicesListResponse._(
            voices: voices.build(),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'VoicesListResponse', 'total'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voices';
        voices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VoicesListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
