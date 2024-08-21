import 'package:demo/Crudoperation.dart';
import 'package:demo/alertbox.dart';
import 'package:demo/animatedalign.dart';
import 'package:demo/animatedbuilder.dart';
import 'package:demo/animatedcontainer.dart';
import 'package:demo/animateddefaulttextstyle.dart';
import 'package:demo/animatedicon.dart';
import 'package:demo/animatedlist.dart';
import 'package:demo/animatedmodelbarrier.dart';
import 'package:demo/animatedpadding.dart';
import 'package:demo/animatedphysical.dart';
import 'package:demo/animatedposition.dart';
import 'package:demo/animatedrotation.dart';
import 'package:demo/animatedsize.dart';
import 'package:demo/animatedswitcher.dart';
import 'package:demo/animation1.dart';
import 'package:demo/animation2.dart';
import 'package:demo/animation3.dart';
import 'package:demo/animation4.dart';
import 'package:demo/animationcrossfade.dart';
import 'package:demo/animationopacity.dart';
import 'package:demo/animationripped.dart';
import 'package:demo/animationtwe.dart';
import 'package:demo/astroapp/drawer.dart';
import 'package:demo/astroapp/newchat.dart';
import 'package:demo/astroapp/newsave.dart';
import 'package:demo/astroapp/wellcome.dart';
import 'package:demo/button.dart';
import 'package:demo/cakiweb/inserted.dart';
import 'package:demo/cakiweb/register.dart';
import 'package:demo/callingapi.dart';
import 'package:demo/callingapi2.dart';
import 'package:demo/circleavatar.dart';
import 'package:demo/crudoperation1.dart';
import 'package:demo/crudoperationhome.dart';
import 'package:demo/emailpasswordfire.dart';
//import 'package:demo/firebase.dart';
import 'package:demo/firebase_options.dart';
import 'package:demo/getxsnackbar.dart';
import 'package:demo/home.dart';
import 'package:demo/image.dart';
import 'package:demo/listview1.dart';
import 'package:demo/listviewbuilder.dart';
import 'package:demo/loader.dart';
import 'package:demo/login.dart';
import 'package:demo/myproject/listviewbuilder.dart';
import 'package:demo/navigator.dart';
import 'package:demo/noteapp.dart';
import 'package:demo/noteappscreen.dart';
import 'package:demo/onboarding.dart';
import 'package:demo/popupscreen.dart';
import 'package:demo/project2/loginpage.dart';
import 'package:demo/response.dart';
import 'package:demo/routeget.dart';
import 'package:demo/sharedhome.dart';
import 'package:demo/sharedpref.dart';
import 'package:demo/skyzone/feedback.dart';

import 'package:demo/skyzone/profilescreenn.dart';
import 'package:demo/smgetx.dart';
import 'package:demo/splashscreen.dart';
import 'package:demo/stack1.dart';
import 'package:demo/stack2.dart';
import 'package:demo/stopwatch.dart';
import 'package:demo/stream.dart';
import 'package:demo/tarun.dart';
import 'package:demo/tictac.dart';
import 'package:demo/validation.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:demo/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



void main() {
//    WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp(
//      options: DefaultFirebaseOptions.currentPlatform,
//  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'first',
      routes: {
        //  'first':(context) => Onboarding(),
        //   'second':(context) => HomePage(),
        //'second':(context) => EditScreenn(),
        //'second':(context) => EditScreenn(),
       // 'first':(context) => HomePagee(),
        //'second':(context) => EditScreenn(),
        'first':(context) => TarunScreen(),
        'second':(context) =>Secondscreen(),
        'third' :(context) =>  Thirdscreen(),
        'fourth':(context) =>  Fourthscreen(),
        'fifth':(context) => EndScreen(),

        

        //'first':(context) => Popups(),
        //'second':(context) => GETApp(),
       //'first' :(context) =>  Onboarding(),
        //'second':(context) =>  HomePage(),
        
       
       

        
        
      },
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a purple toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
   
 //home:StopWatch(),



    
    
    
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
