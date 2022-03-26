import 'dart:async';
import 'package:flutter/material.dart';
import 'package:re_ui/shimmer/shimmer_ex/components/list_widget_s.dart';

import 'components/shimmer_sc.dart';

class ShimmerEX extends StatefulWidget {
  const ShimmerEX({Key? key}) : super(key: key);

  @override
  State<ShimmerEX> createState() => _ShimmerEXState();
}

class _ShimmerEXState extends State<ShimmerEX> {
  var isDataFetched = false;

  @override
  void initState() {
    super.initState();

    // ignore: unused_local_variable
    Timer timer = Timer(const Duration(seconds: 10), () {
      setState(() {
        isDataFetched = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                isDataFetched == false ? const ShimmerList() : const ListWS()));
  }
}
