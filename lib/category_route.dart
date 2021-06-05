// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import './category.dart';

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  static final _backgroundColor = Colors.green[100];
  static const _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: _backgroundColor,
      elevation: _elevation,
      title: Center(
        child: Text(
          'Unit Converter',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    final categoriesList = _categoryNames.asMap().entries.map<Widget>((el) {
      return Category(
        name: _categoryNames[el.key],
        icon: Icons.cake,
        color: _baseColors[el.key],
      );
    }).toList();

    return Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: categoriesList,
      ),
    );
  }
}
