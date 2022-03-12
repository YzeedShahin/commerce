import 'package:http/http.dart' as http;
import '../models/category_model.dart';

class Services {
  static const String host = 'http://192.168.1.9/commerce';

   static Future<List<CategoryModel>> getCategories() async {
     var url = Uri.parse(host + '/get_categories.php');
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<CategoryModel> categories = categoryFromJson(response.body);
        return categories;
      } else {

        return <CategoryModel>[];
      }
    } catch (e) {
      return <CategoryModel>[];
    }
  }
}

