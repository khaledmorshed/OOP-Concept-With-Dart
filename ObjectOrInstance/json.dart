//it allows to work with json data.it importing from dart
import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg", "id": 1}';

  // parseJson json object is a map data structure that has keys and valu
  // dart doesn't know what are the different of types have key and value inside of parsJson.
  var parseJson = json.decode(rawJson); // here are presemt all data with map
  //print(parseJson['url']);
  var imageModel = new ImageModel(parseJson["id"], parseJson["url"]);
  print(imageModel.id);
  print(imageModel.url);
}

// with imageModel class here is seperated all data of json
class ImageModel {
  int? id;
  String? url;

  ImageModel(this.id, this.url);
}
