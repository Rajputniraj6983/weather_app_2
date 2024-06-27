import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class WeateherServices{
  Future<String?> Tojson()async {
    String? json = 'https://api.weatherapi.com/v1/current.json?key=c58c4890659149a08e785642242506&q=surat';
   Uri uri = Uri.parse(json);
   Response response = await http.get(uri);

   if(response.statusCode == 200){
     print("api succesfull called");
     return response.body;
   }else{
     return null ;
   }
  }
}