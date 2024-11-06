// import 'package:book_ecommerce/model/model.dart';
// import 'package:dio/dio.dart';

// class ServicePage {
//   final dio = Dio();

//   Future<List<BoookModel>> getData() async {
//     try {
//       final response =
//           await dio.get('http://localhost:3000/api/products/products');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = response.data['data'];
//         return data.map((e) => BoookModel.fromjson(e)).toList();
//       } else {
//         throw Exception("Error");
//       }
//     } catch (e) {
//       print(e);
//       throw Exception("error get data:$e");
//     }
//   }
// }

import 'package:book_ecommerce/model/model.dart';
import 'package:dio/dio.dart';

class ServicePage {
  final dio = Dio();

  Future<List<BoookModel>> getData() async {
    try {
      final response =
          await dio.get('http://localhost:3000/api/products/products');
      if (response.statusCode == 200) {
        // Extract the "datas" list from the response data
        final List<dynamic> data = response.data['datas'];
        return data.map((e) => BoookModel.fromjson(e)).toList();
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      print(e);
      throw Exception("Error fetching data: $e");
    }
  }
}
