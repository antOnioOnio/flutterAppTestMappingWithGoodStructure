import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_mapping/database/models/BartenderWithPositionsHelper.dart';
import 'package:test_mapping/database/models/ModelBartender.dart';
import 'package:test_mapping/database/models/ModelBartenderPosition.dart';

import '../appDataBase.dart';

part 'model_bartender_dao.g.dart';

@UseDao(tables: [ModelBartenders])
class ModelBartenderDao extends DatabaseAccessor<MyDatabase>
  with _$ModelBartenderDaoMixin {
  ModelBartenderDao(MyDatabase db) : super(db);



/*
  Future<int> writeShoppingCart(BartenderWithPositionHelper entry) {
    return transaction((_) async {
      final modelBartender = entry.modelBartender;

      // first, we write the shopping cart
      await into(shoppingCarts).insert(cart, mode: InsertMode.replace);

      // we replace the entries of the cart, so first delete the old ones
      await (delete(shoppingCartEntries)
        ..where((entry) => entry.shoppingCart.equals(cart.id)))
          .go();

      // And write the new ones
      for (final item in entry.items) {
        await into(shoppingCartEntries).insert(ShoppingCartEntry(shoppingCart: cart.id, item: item.id));
      }
    });
  }
*/


}