import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:match_demo/models/home/fighter.dart';
import 'package:match_demo/models/home/session.dart';

const baseUrl = "https://staging-api.konquer.club/api/v1/events/";

var fighterProvider = StateProvider<List<Fighter>>((ref) => <Fighter>[]);
var sessionProvider = StateProvider<List<Session>>((ref) => <Session>[]);

Future<void> getFighters({WidgetRef? ref}) async {
  var url = "${baseUrl}42/fighters";
  var headers = {
    'authority': 'staging-api.konquer.club',
    'accept': '*/*',
    'accept-language': 'en-US,en;q=0.9',
    'authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA4ODI1Mzg5LCJpYXQiOjE2NzcyODkzODksImp0aSI6ImM1MTM2MzMwZWJkZDQyYTRiOTZhMTU3OGZjNGI3ZTczIiwidXNlcl9pZCI6MjQ0OX0.uJgdWbbHdBWwVImt8XM8UKMEMkuUuGvGXF0Qkl0D0Tw',
    'dnt': '1',
    'origin': 'https://stg-konquer.web.app',
    'referer': 'https://stg-konquer.web.app/',
    'sec-ch-ua':
        '"Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'cross-site',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'
  };

  var response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    var newRes = <Fighter>[];
    if (response.body.isNotEmpty) {
      List<dynamic> allData = jsonDecode(response.body);
      for (var element in allData) {
        newRes.add(Fighter.fromJson(element));
      }
    }

    (ref != null)
        ? ref.read(fighterProvider.notifier).state = newRes
        : fighterProvider = StateProvider((ref) => newRes);
  }
}

Future<void> getSessions({WidgetRef? ref}) async {
  var url = "${baseUrl}42/boutsheets/43/sessions";
  var headers = {
    'authority': 'staging-api.konquer.club',
    'accept': '*/*',
    'accept-language': 'en-US,en;q=0.9',
    'authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA4ODI1Mzg5LCJpYXQiOjE2NzcyODkzODksImp0aSI6ImM1MTM2MzMwZWJkZDQyYTRiOTZhMTU3OGZjNGI3ZTczIiwidXNlcl9pZCI6MjQ0OX0.uJgdWbbHdBWwVImt8XM8UKMEMkuUuGvGXF0Qkl0D0Tw',
    'dnt': '1',
    'origin': 'https://stg-konquer.web.app',
    'referer': 'https://stg-konquer.web.app/',
    'sec-ch-ua':
        '"Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'cross-site',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'
  };

  var response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    var newRes = <Session>[];
    if (response.body.isNotEmpty) {
      List<dynamic> allData = jsonDecode(response.body);
      for (var element in allData) {
        newRes.add(Session.fromJson(element));
      }
    }

    (ref != null)
        ? ref.read(sessionProvider.notifier).state = newRes
        : sessionProvider = StateProvider((ref) => newRes);
  }
}

Future<void> cancleMatch(String id, WidgetRef ref) async {
  var url = "${baseUrl}42/boutsheets/43/sessions/$id";
  var headers = {
    'authority': 'staging-api.konquer.club',
    'accept': '*/*',
    'accept-language': 'en-US,en;q=0.9',
    'authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzA4ODI3MzQwLCJpYXQiOjE2NzcyOTEzNDAsImp0aSI6ImE4MGY0YjBhOGM0NDQzMmJiMzMwOThkNzI5NzMxZDc4IiwidXNlcl9pZCI6MjQ0OX0.C1woukrC1lmIHcy9CbKwPTjEsGVYFMzH4EhlZvvx4h4',
    'content-type': 'application/json; charset=utf-8',
    'origin': 'http://localhost:52994',
    'referer': 'http://localhost:52994/',
    'sec-ch-ua':
        '"Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"macOS"',
    'sec-fetch-dest': 'empty',
    'sec-fetch-mode': 'cors',
    'sec-fetch-site': 'cross-site',
    'user-agent':
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36'
  };

  await http.delete(Uri.parse(url), headers: headers);

  await getFighters(ref: ref);
  await getSessions(ref: ref);
}
