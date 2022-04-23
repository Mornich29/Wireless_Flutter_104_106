import '../appdetail/google_map.dart';
import '../home_page.dart';
import 'package:flutter/material.dart';

class GPSPageWidget extends StatefulWidget {
  const GPSPageWidget({Key key}) : super(key: key);

  @override
  _GPSPageWidgetState createState() => _GPSPageWidgetState();
}

class _GPSPageWidgetState extends State<GPSPageWidget> {
  // LatLng googleMapsCenter;
  // Completer<GoogleMapController> googleMapsController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFF6E6E6E),
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: AlignmentDirectional(0.15, 0),
          child: InkWell(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageWidget(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/arrow.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(-0.3, 0),
          child: Text(
            'GPS',
            style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFE3E3E2),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MapScreen(
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
