import 'package:custom_widgets/routes/pagekeys.dart';
import 'package:custom_widgets/src/pages/animation_pages/confetti.dart';
import 'package:custom_widgets/src/pages/appbar.dart';
import 'package:custom_widgets/src/pages/bottom_sheet.dart';
import 'package:custom_widgets/src/pages/checkbox.dart';
import 'package:custom_widgets/src/pages/checkbox_list_tile.dart';
import 'package:custom_widgets/src/pages/dropdown_menu.dart';
import 'package:custom_widgets/src/pages/expansion_panel.dart';
import 'package:custom_widgets/src/pages/expansion_tile.dart';
import 'package:custom_widgets/src/pages/home.dart';
import 'package:custom_widgets/src/pages/item_page.dart';
import 'package:custom_widgets/src/pages/multiple_expansion_panel.dart';
import 'package:custom_widgets/src/pages/page_view.dart';
import 'package:custom_widgets/src/pages/popup_dialog.dart';
import 'package:custom_widgets/src/pages/popup_menu.dart';
import 'package:custom_widgets/src/pages/tabbar.dart';
import 'package:flutter/src/widgets/framework.dart';

Map<String, Widget Function(dynamic context)> routes = {
  PageKeys.bottomSheet: (context) => const BottomSheetPage(),
  PageKeys.expansionTile: (context) => const ExpansionTilePage(),
  PageKeys.checkbox: (context) => const CheckBoxPage(),
  PageKeys.checkboxListTile: (context) => const CheckBoxListTilePage(),
  PageKeys.popupDialog: (context) => const PopupDialogPage(),
  PageKeys.dropdownMenu: (context) => const DropdownMenuPage(),
  PageKeys.pageView: (context) => const PageViewPage(),
  PageKeys.expansionPanel: (context) => const ExpansionPanelPage(),
  PageKeys.multipleExpansionPanel: (context) =>
      const MultipleExpansionPanelPage(),
  PageKeys.appBar: (context) => const AppBarPage(),
  PageKeys.tabBar: (context) => const TabBarPage(),
  PageKeys.popupMenu: (context) => const PopupMenuPage(),
  PageKeys.itemPage: (context) => const ItemPage(),
  PageKeys.confetti: (context) => const ConfettiPage(),

};
