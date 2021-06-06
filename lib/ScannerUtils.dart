// // Copyright 2019 The Chromium Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui';
//
// import 'package:camera/camera.dart';
// import 'package:firebase_ml_vision/firebase_ml_vision.dart';
// import 'package:flutter/foundation.dart';
//
// class ScannerUtils {
//   ScannerUtils._();
//
//   static Future<dynamic> detect({
//     @required CameraImage image,
//     @required Future<dynamic> Function(FirebaseVisionImage image) detectInImage,//
//   }) async {
//     return detectInImage(
//           FirebaseVisionImage.fromBytes(_concatenatePlanes(image.planes), _buildMetaData(image),
//       ),
//     );
//   }
//   static Uint8List _concatenatePlanes(List<Plane> planes) {
//     final WriteBuffer allBytes = WriteBuffer();
//     for (Plane plane in planes) {
//       allBytes.putUint8List(plane.bytes);
//     }
//     return allBytes.done().buffer.asUint8List();
//   }
//
//   static FirebaseVisionImageMetadata _buildMetaData(
//       CameraImage image,
//       ) {
//     return FirebaseVisionImageMetadata(
//       rawFormat: image.format.raw,
//       size: Size(image.width.toDouble(), image.height.toDouble()),
//       planeData: image.planes.map(
//             (Plane plane) {
//           return FirebaseVisionImagePlaneMetadata(
//             bytesPerRow: plane.bytesPerRow,
//             height: plane.height,
//             width: plane.width,
//           );
//         },
//       ).toList(),
//     );
//   }
//
//
// }