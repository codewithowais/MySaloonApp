import "package:http/http.dart" as http;
import 'dart:convert' as convert;

class LocationService{
  final String key = 'AIzaSyBdXm5lf_NfpStchyRDc3Cl94cNNZMLW2s';
  // Future <String> getPlaceId(String input) async {
  //
  //   try{
  //     final  String url =
  //         'https://maps.googleapis.com/maps/api/place/textsearch/json?query=$input&key=$key';
  //     var response= await http.get(Uri.parse(url));
  //     print(response);
  //     var json= convert.jsonDecode(response.body);
  //     var placeId= json['candiates'][0]['place_id'] as String;
  //     return placeId;
  //   } catch(err) {
  //     print(err);
  //     return '';
  //   }
  //
  //
  // }

  Future <Map<String,dynamic>> getPlace(String input) async {
    // final placeId = await getPlaceId(input);
    final String url ='https://maps.googleapis.com/maps/api/place/textsearch/json?query=$input&key=$key';
        // 'https://maps.googleapis.com/maps/api/place/findplaceformtext/json?place_id=$placeId&key=$key';
    // final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=Museum%20of%20Contemporary%20Art%20Australia&inputtype=textquery&fields=formatted_address%2Cname%2Crating%2Copening_hours%2Cgeometry&key=$key';

    var response= await http.get(Uri.parse(url));

    final Map json = convert.jsonDecode(response.body);

    // var json= convert.jsonDecode(response.body)
    var  result=json['results'][0] as Map<String,dynamic>;
    // print(result);
    // return result;
    return result;

  }
}