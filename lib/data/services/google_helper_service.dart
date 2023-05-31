// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:googleapis/people/v1.dart' as people;
// import 'package:http/src/client.dart';
// import 'package:money_fin/data/services/google_auth_service.dart';

// class GoogleHelper {
//   GoogleAuthService googleUser = GoogleAuthService();

//   static Future<UserCredential> googleHelper() async {
//     Future<people.Person?> getGoogleUserProfile() async {
//         people.PeopleServiceApi peopleApi =
//             people.PeopleServiceApi((await googleUser.authHeaders) as Client);
        
//         people.Person profile = await peopleApi.people.get('me', personFields: 'photos');
//         return profile;
//         return null;
//       }

//   }

// }