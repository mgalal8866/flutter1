import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter_application_1/models/product_model.dart';

class CategoriesServies
{
  Future<List<dynamic>> getcategoryproducts({required String categoryname}) async
  {
   
      List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories$categoryname');
 
      List<ProductModel> productlist = [];
      for (int i = 0; i < data.length; i++){
        productlist.add(ProductModel.fromJson(data[i]));
      }
      return productlist;
   

  }

}