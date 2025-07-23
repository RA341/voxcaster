// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteResponse extends DeleteResponse {
  @override
  final String message;
  @override
  final String voiceKey;

  factory _$DeleteResponse([void Function(DeleteResponseBuilder)? updates]) =>
      (DeleteResponseBuilder()..update(updates))._build();

  _$DeleteResponse._({required this.message, required this.voiceKey})
      : super._();
  @override
  DeleteResponse rebuild(void Function(DeleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteResponseBuilder toBuilder() => DeleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteResponse &&
        message == other.message &&
        voiceKey == other.voiceKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, voiceKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteResponse')
          ..add('message', message)
          ..add('voiceKey', voiceKey))
        .toString();
  }
}

class DeleteResponseBuilder
    implements Builder<DeleteResponse, DeleteResponseBuilder> {
  _$DeleteResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _voiceKey;
  String? get voiceKey => _$this._voiceKey;
  set voiceKey(String? voiceKey) => _$this._voiceKey = voiceKey;

  DeleteResponseBuilder() {
    DeleteResponse._defaults(this);
  }

  DeleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _voiceKey = $v.voiceKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteResponse other) {
    _$v = other as _$DeleteResponse;
  }

  @override
  void update(void Function(DeleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteResponse build() => _build();

  _$DeleteResponse _build() {
    final _$result = _$v ??
        _$DeleteResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeleteResponse', 'message'),
          voiceKey: BuiltValueNullFieldError.checkNotNull(
              voiceKey, r'DeleteResponse', 'voiceKey'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
