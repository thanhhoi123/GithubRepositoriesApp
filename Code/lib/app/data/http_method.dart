import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:init_project/app/data/repository.dart';
class HttpMethod{
  static const String baseUrl = 'https://api.github.com/search/repositories?q=language:';

  static Future<List<Repository>> getRepositories(String valueSearch) async{
    final response = await http.get(Uri.parse(baseUrl + valueSearch));
    var jsonData = jsonDecode(response.body);
    List<Repository> repositories = [];
    for(var data in jsonData['items']){
      repositories.add(Repository.fromJson(data));
    }
    return repositories.where(
      (element) => element.fullName!.toLowerCase().contains(valueSearch.toLowerCase())
    ).toList();
  }  
} 