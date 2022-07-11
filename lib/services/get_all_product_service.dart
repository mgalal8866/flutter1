import 'package:flutter_application_1/helper/api.dart';
import 'package:flutter_application_1/models/product_model.dart';


class GetAllProducts
{
 Future <List<ProductModel>> getallprodouct() async {
      List<dynamic> data1 = await Api().get(url: 'https://fakestoreapi.com/products');
 
      List<ProductModel> productlist = [];
      for (int i = 0; i < data1.length; i++){
        productlist.add(ProductModel.fromJson(data1[i]));
      }
      return productlist;

  }
}