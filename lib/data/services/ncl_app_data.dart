import 'package:http/http.dart';
import 'package:ncl_app/data/models/ship_info.dart';
import 'package:ncl_app/utils/enums.dart';

class NclAppData {
  Future<ShipInfo> getShipDetails({required Ships ship}) async {
    final response = await get(
      Uri.parse('https://www.ncl.com/cms-service/cruise-ships/${ship.name}'),
    );

    return ShipInfo.fromJson(response.body);
  }
}
