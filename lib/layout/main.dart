import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BusinessCardState(),
    );
  }
}

class BusinessCardState extends StatelessWidget {
  const BusinessCardState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blueGrey,
          backgroundColor: Colors.blueGrey,
          cardColor: Colors.blueGrey,
          accentColor: Colors.blueGrey,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'contact',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade100,
        ),
        // backgroundColor: Colors.yellow[100],
        backgroundColor: Colors.white,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/layout/assets/my_cat.jpeg'),
              ),
            ),
            const Text(
              'cat',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'so cute cats',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print('on Pressed contect');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade200,
                    fixedSize: const Size(96, 0)),
                child: const Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(height: 32),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_android_outlined,
                      size: 22,
                    ),
                    Text('+00 (00) 000 000'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(top: 5, bottom: 1.6, right: 4),
                        child: SvgPicture.asset(
                          'lib/layout/assets/icons/instagram.svg',
                          width: 18,
                        )),
                    const Text(' @deokyandvetie'),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 20,
                    ),
                    Text('  mail@mail.com')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
