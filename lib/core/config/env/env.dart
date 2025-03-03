import 'package:flutter/foundation.dart';

class Environment {
  static String fileName = '.env';

  static String get apiUrl =>
      kReleaseMode
          ? 'https://prod-api.utol.com.ph/api'
          : kProfileMode
          ? 'https://staging-api.utol.com.ph/api'
          : 'https://dev-api.utol.com.ph/api';

  static String get googleMapApi => 'https://maps.googleapis.com/maps/api';

  static String get googleMapToken => 'AIzaSyD_c9gw4MyIIdUwkPctf77pZGN83NPoG9s';
}
