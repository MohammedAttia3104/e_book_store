import 'package:e_book_store/core/utils/constants.dart';
import 'package:e_book_store/e_book_store.dart';
import 'package:e_book_store/features/home/data/models/image_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

import '../../home/data/models/access_info.dart';
import '../../home/data/models/book_item_model.dart';
import '../../home/data/models/dimensions.dart';
import '../../home/data/models/e_pub.dart';
import '../../home/data/models/offer.dart';
import '../../home/data/models/reading_modes.dart';
import '../../home/data/models/sale_info.dart';
import '../../home/data/models/sale_info_list_price.dart';
import '../../home/data/models/search_info.dart';
import '../../home/data/models/volume_info.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  _registerHiveAdapters();
  await Hive.openBox<BookItemModel>(kBookItemBox);
}

void _registerHiveAdapters() {
  Hive.registerAdapter<BookItemModel>(BookItemModelAdapter());
  Hive.registerAdapter<VolumeInfo>(VolumeInfoAdapter());
  Hive.registerAdapter<ImageLinks>(ImageLinksAdapter());
  Hive.registerAdapter<ReadingModes>(ReadingModesAdapter());
  Hive.registerAdapter<SaleInfo>(SaleInfoAdapter());
  Hive.registerAdapter<SaleInfoListPrice>(SaleInfoListPriceAdapter());
  Hive.registerAdapter<AccessInfo>(AccessInfoAdapter());
  Hive.registerAdapter<Dimensions>(DimensionsAdapter());
  Hive.registerAdapter<Epub>(EpubAdapter());
  Hive.registerAdapter<Offer>(OfferAdapter());
  Hive.registerAdapter<OfferListPrice>(OfferListPriceAdapter());
  Hive.registerAdapter<SearchInfo>(SearchInfoAdapter());
}
