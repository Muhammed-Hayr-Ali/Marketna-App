import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketna_app/shared/converter/string_converter.dart';
import 'package:marketna_app/shared/widget/custom_avatar.dart';
import 'package:marketna_app/shared/widget/custom_text.dart';
import 'package:marketna_app/src/profile/presentation/manager/controller.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      builder: (_) => Row(
        children: [
          CustomAvatar(
            sourceImage: SourceImage.networkImage,
            size: 80,
            borderWidth: 2,
            path: StringConvrter.url(url: _.profile.profile!),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                _.profile.name,
                fontSize: 18,
              ),
              const SizedBox(height: 6),
              CustomText(
                _.profile.email,
                fontSize: 12,
                color: Colors.grey,
              ),
              const SizedBox(height: 6),
              SizedBox(
                child: _.profile.expirationDate != '0000-00-00 00:00:00' &&
                        _.profile.expirationDate != null
                    ? Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.grey,
                          ),
                          CustomText(
                            _.profile.expirationDate,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ],
                      )
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
