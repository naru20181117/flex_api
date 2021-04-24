import 'package:flutter/material.dart';
import 'CommonList.dart';
import 'CommonUtil.dart';
import 'ConnectionBase.dart';

class Page2 extends StatefulWidget {
  _MyGetHttpDataState createState() => new _MyGetHttpDataState();
}

class _MyGetHttpDataState extends State<Page2> {
  ConnectionBase _connectionBase = ConnectionBase();
  CommonList _commonList = CommonList();
  List _data;

  Future<void> _searchStart() async {
    var jsonData =
        await _connectionBase.getHttpJSONData(KEY_WORDS.Mountain.value);

    setState(() {
      _data = jsonData;
    });
  }

  @override
  void initState() {
    super.initState();
    this._searchStart();
  }

  @override
  Widget build(BuildContext context) {
    return _commonList.getListWidget(_data);
  }
}
