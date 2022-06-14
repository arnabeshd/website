import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

// Points to the root reference
final storageRef = FirebaseStorage.instance.ref();

// Note that you can use variables to create child values
final fileName = "Curriculum Vitae.pdf";
final spaceRef = storageRef.child(fileName);

// File path is "images/space.jpg"
final path = spaceRef.fullPath;

// File name is "space.jpg"
final name = spaceRef.name;
