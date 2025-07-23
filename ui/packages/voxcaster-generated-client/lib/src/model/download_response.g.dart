// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadResponse extends DownloadResponse {
  @override
  final String message;
  @override
  final String voiceKey;
  @override
  final String? downloadId;

  factory _$DownloadResponse(
          [void Function(DownloadResponseBuilder)? updates]) =>
      (DownloadResponseBuilder()..update(updates))._build();

  _$DownloadResponse._(
      {required this.message, required this.voiceKey, this.downloadId})
      : super._();
  @override
  DownloadResponse rebuild(void Function(DownloadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadResponseBuilder toBuilder() =>
      DownloadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadResponse &&
        message == other.message &&
        voiceKey == other.voiceKey &&
        downloadId == other.downloadId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, voiceKey.hashCode);
    _$hash = $jc(_$hash, downloadId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadResponse')
          ..add('message', message)
          ..add('voiceKey', voiceKey)
          ..add('downloadId', downloadId))
        .toString();
  }
}

class DownloadResponseBuilder
    implements Builder<DownloadResponse, DownloadResponseBuilder> {
  _$DownloadResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _voiceKey;
  String? get voiceKey => _$this._voiceKey;
  set voiceKey(String? voiceKey) => _$this._voiceKey = voiceKey;

  String? _downloadId;
  String? get downloadId => _$this._downloadId;
  set downloadId(String? downloadId) => _$this._downloadId = downloadId;

  DownloadResponseBuilder() {
    DownloadResponse._defaults(this);
  }

  DownloadResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _voiceKey = $v.voiceKey;
      _downloadId = $v.downloadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadResponse other) {
    _$v = other as _$DownloadResponse;
  }

  @override
  void update(void Function(DownloadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadResponse build() => _build();

  _$DownloadResponse _build() {
    final _$result = _$v ??
        _$DownloadResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DownloadResponse', 'message'),
          voiceKey: BuiltValueNullFieldError.checkNotNull(
              voiceKey, r'DownloadResponse', 'voiceKey'),
          downloadId: downloadId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
