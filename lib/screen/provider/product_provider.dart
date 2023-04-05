import 'package:flutter/foundation.dart';
import '../../utils/utils_helper.dart';

class ProductProvider extends ChangeNotifier {
  List<dynamic> productList = [];
  Future<void> apihelper() async {
    ApiHelper a1 = ApiHelper();
    productList = await a1.Apicall() as List;
  }
}