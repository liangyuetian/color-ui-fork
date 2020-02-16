import 'dart:io';
import 'dart:convert';

Future getJSON(url) async {
  var httpClient = HttpClient();
  var request = await httpClient.getUrl(Uri.parse(url));
  var response = await request.close();
  var s = json.decode(await response.transform(utf8.decoder).join());
  return new Map<dynamic, dynamic>.from(s);
  return json.decode(await response.transform(utf8.decoder).join());
}