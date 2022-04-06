import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ncl_app/data/models/ship_info.dart';
import 'package:ncl_app/data/services/ncl_app_data.dart';
import 'package:ncl_app/utils/enums.dart';

// Default to bliss
final currentShip = StateProvider<Ships>((ref) => Ships.bliss);
final currentShipImage =
    StateProvider<String>((ref) => 'assets/images/${ref.watch(currentShip).name}.jpg');

final nclAppDataProvider = Provider<NclAppData>((ref) => NclAppData());

final shipDetailsProvider = FutureProvider<ShipInfo>((ref) {
  final repository = ref.watch(nclAppDataProvider);
  return repository.getShipDetails(ship: ref.watch(currentShip));
});
