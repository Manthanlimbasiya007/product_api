import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screen/model/product_model.dart';

class ApiHelper {
  Future<List> Apicall() async {
    List<dynamic> productjsonList = [];

    String apilink = "https://fakestoreapi.com/products";
    Uri url = Uri.parse(apilink);
    var response = await http.get(url);
    var json = jsonDecode(response.body);

    productjsonList = json.map((e) => ProductModel().productModelfactory(e)).toList();
    return productjsonList;
  }
}