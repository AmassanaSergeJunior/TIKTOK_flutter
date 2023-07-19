import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_tutorial/controllers/auth_controller.dart';
import 'package:tiktok_tutorial/views/screens/add_video_screen.dart';
import 'package:tiktok_tutorial/views/screens/profile_screen.dart';
import 'package:tiktok_tutorial/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  // SearchScreen(),
  const AddVideoScreen(),
  // Text('Messages Screen'),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Color(0xFF2c3030);
const buttonColor = Color(0xFFEE1D52);
const borderColor = Colors.grey;

Color rougeTikTok = Color(0xFFEE1D52);
Color blanc = Color(0xFFFFFFFF);
Color noir = Color(0xFF000000);

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
