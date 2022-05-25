import 'package:midesk/model/login/APIsResponse.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'api_constrain.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: AppUrl.baseUrl)
abstract class APIClient {
  factory APIClient(Dio dio) = _APIClient;

  /// ======== RES LOGIN =========== */
  @POST("auth/login")
  @FormUrlEncoded()
  Future<APIsResponse> loginPage(
      @Field("email") emailId, @Field("password") password);

  /// ======== RES HOME =========== */
  // @GET('')
  // Future<List<Contact>> getContact();

  // @POST('')
  // Future<Contact> addContact(@Body() Contact contact);

  // @PUT('{id}')
  // Future<Contact> updateContact(@Path()String id,@Body() Contact contact);

  // @DELETE('{id}')
  // Future<Contact> deleteContct(@Path() String id);

}
