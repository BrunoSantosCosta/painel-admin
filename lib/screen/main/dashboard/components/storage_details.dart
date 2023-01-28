import 'package:flutter/cupertino.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/screen/main/dashboard/components/chart.dart';
import 'package:panel_admin/screen/main/dashboard/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Storage Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            Chart(),
            StorageInfoCard(
              amountOffFiles: '1.5GB',
              title: 'Documents Files',
              numOfFiles: 1328,
              svgSrc: 'icons/Documents.svg',
            ),
            StorageInfoCard(
              amountOffFiles: '15.3GB',
              title: 'Media Files',
              numOfFiles: 192,
              svgSrc: 'icons/media.svg',
            ),
            StorageInfoCard(
              amountOffFiles: '1.3GB',
              title: 'Other Files',
              numOfFiles: 1328,
              svgSrc: 'icons/folder.svg',
            ),
            StorageInfoCard(
              amountOffFiles: '15.3GB',
              title: 'Unknow',
              numOfFiles: 192,
              svgSrc: 'icons/unknown.svg',
            )
          ],
        ),
      ),
    );
  }
}
