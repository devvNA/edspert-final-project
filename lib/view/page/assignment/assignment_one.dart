import 'package:edspert_final_project/global/app_colors.dart';
import 'package:flutter/material.dart';

class AssigmentPageOne extends StatelessWidget {
  const AssigmentPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: AppColors.bluePrimary,
          margin: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height / 3.5,
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.all(8),
            color: AppColors.blueSecondary,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Biodata",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    const Flexible(
                      fit: FlexFit.tight,
                      flex: 0,
                      child: CircleAvatar(
                        backgroundColor: AppColors.grayBG,
                        radius: 60.0,
                        backgroundImage: AssetImage(
                          "assets/images/photo-profile.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25.0,
                    ),
                    const Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Nama : Devit Nur Azaqi",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Asal : Purwokerto",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            "Profesi : Mahasiswa",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
