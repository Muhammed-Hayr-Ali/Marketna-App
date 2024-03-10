import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketna_app/shared/widget/custom_bottom_sheet.dart';
import 'package:marketna_app/shared/widget/custom_list_item.dart';
import 'package:marketna_app/shared/widget/permission_handler.dart';

class ImageService {

  static Future<ImageSource?> selectImageSource(
      {Widget? camera, Widget? gallery, required bool accessCamera, required bool accessStorage }) async {
    ImageSource? imageSource;

    await custombottomSheet(
        title: 'Select Image',
        child: Column(
          children: [
            SizedBox(
              child: accessCamera? CustomListItem(
                child: SizedBox(
                    height: 48,
                    width: 48,
                    child: camera ?? const Icon(Icons.camera_alt_outlined)),
                onTap: () => Get.back(result: ImageSource.camera),
              ):null,
            ),
            const Divider(),
            SizedBox(
              child: accessStorage ? CustomListItem(
                child: SizedBox(
                    height: 48,
                    width: 48,
                    child: gallery ?? const Icon(Icons.image_outlined)),
                onTap: () => Get.back(result: ImageSource.gallery),
              ): null,
            ),
          ],
        )).then((value) {
      imageSource = value;
    });
    return imageSource;
  }

  static Future<String?> getImage({Widget? camera, Widget? gallery}) async {
    final bool accessCamera = await PerHandler.camera();
    final bool accessStorage = await PerHandler.storage();

    if (!accessCamera && !accessStorage) return null;

    final response = await selectImageSource(camera: camera, gallery: gallery, accessCamera: accessCamera, accessStorage: accessStorage);
    if (response == null) {
      return null;
    }

    final pickedFile = await ImagePicker().pickImage(source: response);
    if (pickedFile != null) {
      return pickedFile.path;
    }
    return null;
  }
}
