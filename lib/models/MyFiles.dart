import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo({
    required this.color,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.svgSrc,
  });
}

List demoMyFiels = [
  CloudStorageInfo(
    color: primaryColor,
    title: 'Documents',
    totalStorage: '1.9GB',
    numOfFiles: 1328,
    percentage: 35,
    svgSrc: 'icons/Documents.svg',
  ),
  CloudStorageInfo(
    color: primaryColor,
    title: 'Documents',
    totalStorage: '1.9GB',
    numOfFiles: 1328,
    percentage: 35,
    svgSrc: 'icons/Documents.svg',
  ),
  CloudStorageInfo(
    color: primaryColor,
    title: 'Documents',
    totalStorage: '1.9GB',
    numOfFiles: 1328,
    percentage: 35,
    svgSrc: 'icons/Documents.svg',
  ),
  CloudStorageInfo(
    color: primaryColor,
    title: 'Documents',
    totalStorage: '1.9GB',
    numOfFiles: 1328,
    percentage: 35,
    svgSrc: 'icons/Documents.svg',
  )
];
