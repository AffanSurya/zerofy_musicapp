import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zerofy_musicapp/common/widgets/button/bacis_app_button.dart';
import 'package:zerofy_musicapp/core/configs/assets/app_images.dart';
import 'package:zerofy_musicapp/core/configs/assets/app_vectors.dart';
import 'package:zerofy_musicapp/core/configs/theme/app_colors.dart';
import 'package:zerofy_musicapp/presentation/choose_mode/pages/choose_mode.dart';

class GetStrartedPage extends StatelessWidget {
  const GetStrartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.introBG))),
          ),
          Container(
            color: Colors.black.withOpacity(0.75),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo,
                      width: 100,
                    )),
                const Spacer(),
                const Text(
                  'Biarkan Musik Membawamu Terbang',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseModePage()));
                    },
                    title: 'Mulai'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
