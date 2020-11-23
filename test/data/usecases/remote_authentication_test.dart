import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:meta/meta.dart';

class RemoteAuthentication {
  String url;
  HttpClient httpClient;

  RemoteAuthentication({@required this.url, @required this.httpClient});

  Future<void> auth() async {
    httpClient.request(url: url, method: 'POST');
  }
}

abstract class HttpClient {
  Future<void> request({@required url, @required method});
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  test('Should call HttpClient with correct values', () async {
    final httpClient = HttpClientSpy();
    final url = faker.internet.httpUrl();
    final sut = RemoteAuthentication(httpClient: httpClient, url: url);

    await sut.auth();

    verify(httpClient.request(url: url, method: 'POST'));
  });
}
