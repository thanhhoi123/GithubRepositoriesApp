class Repository{
  late String? fullName, language, avatarUrl;
  late int? watchers, forks, stars, issues;

  Repository.fromJson(Map<String, dynamic> json){
    fullName = json['full_name'];
    language = json['language'];
    watchers = json['watchers_count'];
    forks = json['forks_count'];
    stars = json['stargazers_count'];
    issues = json['open_issues'];
    avatarUrl = json['owner']['avatar_url'];
  }
}