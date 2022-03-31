import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'constants.dart';
class database{
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }
}