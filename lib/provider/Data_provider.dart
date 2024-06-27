import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_2/helpers/weateher_services.dart';
import 'package:weather_app_2/modal/weather_modal.dart';


class DataProvider extends ChangeNotifier{
  List datalist = [];
  List <WeatherModal> userlist = [];
  WeatherModal? weatherModal;

  DataProvider(){
    fetchData();
  }

  Future<void> fetchData()
  async {
    WeateherServices weateherServices = WeateherServices();
    String? jsonData = await weateherServices.Tojson();
    if(jsonData != null){
      Map datalist = jsonDecode(jsonData);
      weatherModal = WeatherModal.fromJson(datalist);
      print("--------------------");

      notifyListeners();
    }
  }
}