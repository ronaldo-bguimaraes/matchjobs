import 'package:flutter/material.dart';
import 'package:matchjobs/model/profile.dart';
import 'package:matchjobs/screen/profile/action_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var profile = Profile(
    name: 'Ronaldo Borges Guimaraẽs',
    title: 'Desenvolvedor',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                './images/profile.jpeg',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              profile.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Container(
                            height: 1,
                            color: Colors.black54,
                          ),
                        ),
                        profile.title != null
                            ? Wrap(
                                children: [
                                  Text(profile.title!),
                                ],
                              )
                            : Container(),
                        Expanded(child: Container()),
                        // Wrap(
                        //   runSpacing: 5,
                        //   spacing: 5,
                        //   children: array
                        //       .map(
                        //         (e) => Competencia(
                        //           text: e,
                        //           // color: Colors.red,
                        //         ),
                        //       )
                        //       .toList(),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: const [
                    ActionButton(
                      icon: Icons.close,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButton(
                      icon: Icons.info,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ActionButton(
                      icon: Icons.favorite,
                      color: Colors.green,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
