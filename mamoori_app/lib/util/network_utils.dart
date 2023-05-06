import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

//TODO URL 수정하기
const String baseUrl = 'www.mamoori.com';
const String accessToken = '';

class NetworkUtils {

  static Future get(Uri url, Map<String, String> headers) async {
    final response = await http.get(url, headers: headers);
    final body = response.body;
    final statusCode = response.statusCode;
    if (body.isEmpty) {
      throw MyHttpException(statusCode, 'Response body is null');
    }
    final decoded = json.decode(body);
    if (statusCode < 200 || statusCode >= 300) {
      throw MyHttpException(statusCode, decoded['message']);
    }
    return decoded;
  }

  static Future _helper(String method, Uri url, Map<String, String> headers,
      Map<String, String> body) async {
    final request = http.Request(method, url);
    if (body.isNotEmpty) {
      request.bodyFields = body;
    }
    if (headers.isNotEmpty) {
      request.headers.addAll(headers);
    }
    final streamdResponse = await request.send();
    final statusCode = streamdResponse.statusCode;
    final decoded = json.decode(await streamdResponse.stream.bytesToString());

    debugPrint('decoded: $decoded');

    if (statusCode < 200 || statusCode >= 300) {
      throw MyHttpException(statusCode, decoded['message']);
    }
    return decoded;
  }

  static Future post(
      Uri url, Map<String, String> headers, Map<String, String> body) {
    return _helper('POST', url, headers, body);
  }

  static Future delete(
      Uri url, Map<String, String> headers, Map<String, String> body) {
    return _helper('DELETE', url, headers, body);
  }
}

class MyHttpException extends HttpException {
  final int statusCode;

  MyHttpException(this.statusCode, String message) : super(message);
}

class Response {
  final String token;
  final String message;

  Response({
    required this.token,
    required this.message,
  });

  Response.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        token = json['token'];
}