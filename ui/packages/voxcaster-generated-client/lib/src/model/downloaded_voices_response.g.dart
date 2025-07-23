// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloaded_voices_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DownloadedVoicesResponse extends DownloadedVoicesResponse {
  @override
  final BuiltList<Voice> downloadedVoices;
  @override
  final int total;

  factory _$DownloadedVoicesResponse(
          [void Function(DownloadedVoicesResponseBuilder)? updates]) =>
      (DownloadedVoicesResponseBuilder()..update(updates))._build();

  _$DownloadedVoicesResponse._(
      {required this.downloadedVoices, required this.total})
      : super._();
  @override
  DownloadedVoicesResponse rebuild(
          void Function(DownloadedVoicesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DownloadedVoicesResponseBuilder toBuilder() =>
      DownloadedVoicesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DownloadedVoicesResponse &&
        downloadedVoices == other.downloadedVoices &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, downloadedVoices.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DownloadedVoicesResponse')
          ..add('downloadedVoices', downloadedVoices)
          ..add('total', total))
        .toString();
  }
}

class DownloadedVoicesResponseBuilder
    implements
        Builder<DownloadedVoicesResponse, DownloadedVoicesResponseBuilder> {
  _$DownloadedVoicesResponse? _$v;

  ListBuilder<Voice>? _downloadedVoices;
  ListBuilder<Voice> get downloadedVoices =>
      _$this._downloadedVoices ??= ListBuilder<Voice>();
  set downloadedVoices(ListBuilder<Voice>? downloadedVoices) =>
      _$this._downloadedVoices = downloadedVoices;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  DownloadedVoicesResponseBuilder() {
    DownloadedVoicesResponse._defaults(this);
  }

  DownloadedVoicesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _downloadedVoices = $v.downloadedVoices.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DownloadedVoicesResponse other) {
    _$v = other as _$DownloadedVoicesResponse;
  }

  @override
  void update(void Function(DownloadedVoicesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DownloadedVoicesResponse build() => _build();

  _$DownloadedVoicesResponse _build() {
    _$DownloadedVoicesResponse _$result;
    try {
      _$result = _$v ??
          _$DownloadedVoicesResponse._(
            downloadedVoices: downloadedVoices.build(),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'DownloadedVoicesResponse', 'total'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'downloadedVoices';
        downloadedVoices.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DownloadedVoicesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
