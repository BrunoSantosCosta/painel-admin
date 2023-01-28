import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/models/MyFiles.dart';
import 'package:panel_admin/screen/main/dashboard/components/file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 16 * 1.5,
                  vertical: 16,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add New'),
            ),
          ],
        ),
        SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiels.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiels[index],
          ),
        )
      ],
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    required this.info,
    required this.color,
    required this.percentage,
  }) : super(key: key);

  final CloudStorageInfo info;

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, contraints) => Container(
            width: contraints.maxWidth * (percentage / 10),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
