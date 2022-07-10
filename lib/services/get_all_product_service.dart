import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter_application_1/models/product_model.dart';


class GetAllProducts
{
  List<ProductModel> getallprodouct(){
      List<dynamic> data = Api().get(url: 'https://fakestoreapi.com/products');
 
      List<ProductModel> productlist = [];
      for (int i = 0; i < data.length; i++){
        productlist.add(ProductModel.fromJson(data[i]));
      }
  }
}