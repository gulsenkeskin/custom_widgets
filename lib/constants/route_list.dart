import 'package:custom_widgets/src/pages/bottom_sheet.dart';
import 'package:custom_widgets/src/pages/checkbox.dart';
import 'package:custom_widgets/src/pages/checkbox_list_tile.dart';
import 'package:custom_widgets/src/pages/expansion_tile.dart';

List<Map<String, Object>> routeList=[
  {
    "name":"Bottom Sheet",
    "route":const BottomSheetPage()
  },
  {
    "name":"Expansion Tile",
    "route":const ExpansionTilePage()
  },
  {
    "name":"CheckBox",
    "route":const CheckBoxPage()
  },
  {
    "name":"CheckBox List tile",
    "route":const CheckBoxListTilePage()
  }
];