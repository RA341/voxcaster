# openapi.api.VoiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteVoiceVoiceVoiceKeyDelete**](VoiceApi.md#deletevoicevoicevoicekeydelete) | **DELETE** /voice/{voice_key} | Delete Voice
[**downloadVoiceVoiceDownloadPost**](VoiceApi.md#downloadvoicevoicedownloadpost) | **POST** /voice/download | Download Voice
[**getDownloadStatusVoiceDownloadDownloadIdStatusGet**](VoiceApi.md#getdownloadstatusvoicedownloaddownloadidstatusget) | **GET** /voice/download/{download_id}/status | Get Download Status
[**getVoiceByKeyVoiceVoiceKeyGet**](VoiceApi.md#getvoicebykeyvoicevoicekeyget) | **GET** /voice/{voice_key} | Get Voice By Key
[**getVoicesDownloadedVoiceDownloadedGet**](VoiceApi.md#getvoicesdownloadedvoicedownloadedget) | **GET** /voice/downloaded | Get Voices Downloaded
[**getVoicesVoiceGet**](VoiceApi.md#getvoicesvoiceget) | **GET** /voice/ | Get Voices


# **deleteVoiceVoiceVoiceKeyDelete**
> DeleteResponse deleteVoiceVoiceVoiceKeyDelete(voiceKey)

Delete Voice

Delete a downloaded voice by its key.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();
final String voiceKey = voiceKey_example; // String | Unique identifier for the voice to delete

try {
    final response = api.deleteVoiceVoiceVoiceKeyDelete(voiceKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->deleteVoiceVoiceVoiceKeyDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voiceKey** | **String**| Unique identifier for the voice to delete | 

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadVoiceVoiceDownloadPost**
> DownloadResponse downloadVoiceVoiceDownloadPost(downloadRequest)

Download Voice

Download a voice by its key.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();
final DownloadRequest downloadRequest = ; // DownloadRequest | 

try {
    final response = api.downloadVoiceVoiceDownloadPost(downloadRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->downloadVoiceVoiceDownloadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadRequest** | [**DownloadRequest**](DownloadRequest.md)|  | 

### Return type

[**DownloadResponse**](DownloadResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDownloadStatusVoiceDownloadDownloadIdStatusGet**
> JsonObject getDownloadStatusVoiceDownloadDownloadIdStatusGet(downloadId)

Get Download Status

Get the status of a voice download.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();
final String downloadId = downloadId_example; // String | Download ID to check status for

try {
    final response = api.getDownloadStatusVoiceDownloadDownloadIdStatusGet(downloadId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->getDownloadStatusVoiceDownloadDownloadIdStatusGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **downloadId** | **String**| Download ID to check status for | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVoiceByKeyVoiceVoiceKeyGet**
> Voice getVoiceByKeyVoiceVoiceKeyGet(voiceKey)

Get Voice By Key

Get a specific voice by its key.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();
final String voiceKey = voiceKey_example; // String | Unique identifier for the voice

try {
    final response = api.getVoiceByKeyVoiceVoiceKeyGet(voiceKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->getVoiceByKeyVoiceVoiceKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voiceKey** | **String**| Unique identifier for the voice | 

### Return type

[**Voice**](Voice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVoicesDownloadedVoiceDownloadedGet**
> DownloadedVoicesResponse getVoicesDownloadedVoiceDownloadedGet()

Get Voices Downloaded

Get all voices that have been downloaded locally.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();

try {
    final response = api.getVoicesDownloadedVoiceDownloadedGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->getVoicesDownloadedVoiceDownloadedGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DownloadedVoicesResponse**](DownloadedVoicesResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVoicesVoiceGet**
> VoicesListResponse getVoicesVoiceGet(languageCode, quality, limit)

Get Voices

Get all available voices with optional filtering.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getVoiceApi();
final String languageCode = languageCode_example; // String | Filter by language code
final String quality = quality_example; // String | Filter by quality level
final int limit = 56; // int | Limit number of results

try {
    final response = api.getVoicesVoiceGet(languageCode, quality, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VoiceApi->getVoicesVoiceGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageCode** | **String**| Filter by language code | [optional] 
 **quality** | **String**| Filter by quality level | [optional] 
 **limit** | **int**| Limit number of results | [optional] 

### Return type

[**VoicesListResponse**](VoicesListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

