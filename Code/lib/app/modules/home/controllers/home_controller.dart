import 'package:get/get.dart';
import 'package:init_project/app/data/http_method.dart';
import 'package:init_project/app/data/repository.dart';

class HomeController extends GetxController {
 
  List<Repository>? repositories;
  final repositoriesLenght = 0.obs;
  Future<void> search(value) async{
    repositories = await HttpMethod.getRepositories(value);
    repositoriesLenght.value = repositories!.length;
  }

  Repository? currentRepository;
}
