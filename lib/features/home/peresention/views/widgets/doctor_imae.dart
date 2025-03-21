import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_color.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class DoctorImage extends StatelessWidget {
  final String image;
  final double? radiusImage;
  const DoctorImage({super.key, required this.image, this.radiusImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.lightPrimaryColor,
      radius: radiusImage == null ? 28 : radiusImage,
      child: Image(width: 32, height: 32, image: svg.Svg('assets/my_icon.svg')),
    );
  }
}
