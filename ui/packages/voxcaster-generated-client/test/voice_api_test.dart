import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for VoiceApi
void main() {
  final instance = Openapi().getVoiceApi();

  group(VoiceApi, () {
    // Delete Voice
    //
    // Delete a downloaded voice by its key.
    //
    //Future<DeleteResponse> deleteVoiceVoiceVoiceKeyDelete(String voiceKey) async
    test('test deleteVoiceVoiceVoiceKeyDelete', () async {
      // TODO
    });

    // Download Voice
    //
    // Download a voice by its key.
    //
    //Future<DownloadResponse> downloadVoiceVoiceDownloadPost(DownloadRequest downloadRequest) async
    test('test downloadVoiceVoiceDownloadPost', () async {
      // TODO
    });

    // Get Download Status
    //
    // Get the status of a voice download.
    //
    //Future<JsonObject> getDownloadStatusVoiceDownloadDownloadIdStatusGet(String downloadId) async
    test('test getDownloadStatusVoiceDownloadDownloadIdStatusGet', () async {
      // TODO
    });

    // Get Voice By Key
    //
    // Get a specific voice by its key.
    //
    //Future<Voice> getVoiceByKeyVoiceVoiceKeyGet(String voiceKey) async
    test('test getVoiceByKeyVoiceVoiceKeyGet', () async {
      // TODO
    });

    // Get Voices Downloaded
    //
    // Get all voices that have been downloaded locally.
    //
    //Future<DownloadedVoicesResponse> getVoicesDownloadedVoiceDownloadedGet() async
    test('test getVoicesDownloadedVoiceDownloadedGet', () async {
      // TODO
    });

    // Get Voices
    //
    // Get all available voices with optional filtering.
    //
    //Future<VoicesListResponse> getVoicesVoiceGet({ String languageCode, String quality, int limit }) async
    test('test getVoicesVoiceGet', () async {
      // TODO
    });

  });
}
