import 'package:custom_widgets/constants/pagekeys.dart';
import 'package:custom_widgets/src/pages/bottom_sheet.dart';
import 'package:custom_widgets/src/pages/checkbox.dart';
import 'package:custom_widgets/src/pages/checkbox_list_tile.dart';
import 'package:custom_widgets/src/pages/dropdown_menu.dart';
import 'package:custom_widgets/src/pages/expansion_tile.dart';
import 'package:custom_widgets/src/pages/home.dart';
import 'package:custom_widgets/src/pages/page_view.dart';
import 'package:custom_widgets/src/pages/popup_dialog.dart';
import 'package:flutter/src/widgets/framework.dart';

 Map<String, Widget Function(dynamic context)> routes = {
  PageKeys.bottomSheet: (context) => const BottomSheetPage(),
  PageKeys.expansionTile: (context) => const ExpansionTilePage(),
  PageKeys.checkbox: (context) => const CheckBoxPage(),
  PageKeys.checkboxListTile:(context)=> const CheckBoxListTilePage(),
  PageKeys.popupDialog:(context)=> const PopupDialogPage(),
  PageKeys.dropdownMenu:(context)=> const DropdownMenuPage(),
  PageKeys.pageView:(context)=> const PageViewPage()
};
