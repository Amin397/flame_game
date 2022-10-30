import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(
      const MaterialApp(home: HomeScreen()),
    ),
  );

  // runApp(
  //   const MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: HomeScreen(),
  //   ),
  // );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size? size;

  @override
  void initState() {
    super.initState();

    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.landscapeRight,
    //   DeviceOrientation.landscapeLeft,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size!.height,
        width: size!.width,
        color: Colors.blue,
        child: Center(
          child: InkWell(
            onTap: () {
              print('soltan');
            },
            child: Text('amin'),
          ),
        ),
      ),
    );
  }
}
