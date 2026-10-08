// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_structure/core/helpers/file_service.dart' as _i1061;
import 'package:base_structure/core/helpers/firebase_analytics_helper.dart'
    as _i928;
import 'package:base_structure/core/helpers/global_context.dart' as _i294;
import 'package:base_structure/core/helpers/global_notification.dart' as _i268;
import 'package:base_structure/core/helpers/injection_module.inject.dart'
    as _i533;
import 'package:base_structure/core/helpers/loading_helper.dart' as _i633;
import 'package:base_structure/core/helpers/local_storage/i_storage_helper.dart'
    as _i98;
import 'package:base_structure/core/helpers/local_storage/storage_helper.inject.dart'
    as _i1041;
import 'package:base_structure/core/helpers/location_service.dart' as _i857;
import 'package:base_structure/core/helpers/psermission_services.dart' as _i239;
import 'package:base_structure/core/helpers/share_services.dart' as _i33;
import 'package:base_structure/core/helpers/utilities.dart' as _i616;
import 'package:base_structure/core/http/dio_helper/actions/delete.dart'
    as _i984;
import 'package:base_structure/core/http/dio_helper/actions/get.dart' as _i776;
import 'package:base_structure/core/http/dio_helper/actions/patch.dart'
    as _i300;
import 'package:base_structure/core/http/dio_helper/actions/post.dart' as _i661;
import 'package:base_structure/core/http/dio_helper/actions/put.dart' as _i275;
import 'package:base_structure/core/http/dio_helper/utils/dio_header.dart'
    as _i286;
import 'package:base_structure/core/http/dio_helper/utils/dio_options.dart'
    as _i961;
import 'package:base_structure/core/http/dio_helper/utils/handle_errors.dart'
    as _i669;
import 'package:base_structure/core/http/dio_helper/utils/handle_json_response.dart'
    as _i889;
import 'package:base_structure/core/http/dio_helper/utils/handle_request_body.dart'
    as _i1042;
import 'package:base_structure/core/http/generic_http/generic_http.dart'
    as _i496;
import 'package:base_structure/core/network/network_info.dart' as _i953;
import 'package:base_structure/features/auth/data/data_source/auth_data_source.dart'
    as _i538;
import 'package:base_structure/features/auth/data/data_source/impl_auth_data_source.dart'
    as _i99;
import 'package:base_structure/features/auth/data/repository/impl_auth_repository.dart'
    as _i262;
import 'package:base_structure/features/auth/domain/repository/auth_repository.dart'
    as _i292;
import 'package:base_structure/features/base/data/data_sources/home_remote_data_source.dart'
    as _i86;
import 'package:base_structure/features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i331;
import 'package:base_structure/features/base/data/repositories/impl_base_repository.dart'
    as _i990;
import 'package:base_structure/features/base/domain/repositories/base_repository.dart'
    as _i331;
import 'package:base_structure/features/notifications/data/data_source/impl_notification_data_source.dart'
    as _i949;
import 'package:base_structure/features/notifications/data/data_source/notification_data_source.dart'
    as _i581;
import 'package:base_structure/features/notifications/data/repository/impl_notifications_repository.dart'
    as _i950;
import 'package:base_structure/features/notifications/domain/repository/notifications_repository.dart'
    as _i132;
import 'package:base_structure/features/orders/data/data_source/impl_orders_data_source.dart'
    as _i822;
import 'package:base_structure/features/orders/data/data_source/orders_data_source.dart'
    as _i877;
import 'package:base_structure/features/orders/data/repository/impl_orders_repository.dart'
    as _i662;
import 'package:base_structure/features/orders/domain/repository/orders_repository.dart'
    as _i517;
import 'package:base_structure/features/profile/data/data_source/account_data_source.dart'
    as _i590;
import 'package:base_structure/features/profile/data/data_source/impl_account_data_source.dart'
    as _i360;
import 'package:base_structure/features/profile/data/repository/impl_account_repository.dart'
    as _i177;
import 'package:base_structure/features/profile/domain/repository/account_repository.dart'
    as _i650;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i857.LocationService>(() => _i857.LocationService());
    gh.factory<_i33.ShareServices>(() => _i33.ShareServices());
    gh.factory<_i1061.AppFileService>(() => _i1061.AppFileService());
    gh.factory<_i239.PermissionServices>(() => _i239.PermissionServices());
    gh.singleton<_i633.LoadingHelper>(() => _i633.LoadingHelper());
    gh.lazySingleton<_i953.NetworkInfoImpl>(() => _i953.NetworkInfoImpl());
    gh.lazySingleton<_i961.DioOptions>(() => _i961.DioOptions());
    gh.lazySingleton<_i669.HandleErrors>(() => _i669.HandleErrors());
    gh.lazySingleton<_i1042.HandleRequestBody>(
        () => _i1042.HandleRequestBody());
    gh.lazySingleton<_i889.HandleJsonResponse<dynamic>>(
        () => _i889.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i286.DioHeader>(() => _i286.DioHeader());
    gh.lazySingleton<_i300.Patch>(() => _i300.Patch());
    gh.lazySingleton<_i661.Post>(() => _i661.Post());
    gh.lazySingleton<_i984.Delete>(() => _i984.Delete());
    gh.lazySingleton<_i776.Get>(() => _i776.Get());
    gh.lazySingleton<_i275.Put>(() => _i275.Put());
    gh.lazySingleton<_i496.GenericHttpImpl<dynamic>>(
        () => _i496.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i268.GlobalNotification>(
        () => _i268.GlobalNotification());
    gh.lazySingleton<_i974.Logger>(() => injectionModule.logger);
    gh.lazySingleton<_i583.GoRouter>(() => injectionModule.appRouter);
    gh.lazySingleton<_i616.Utilities>(() => _i616.Utilities());
    gh.lazySingleton<_i928.FirebaseAnalyticsHelper>(
        () => _i928.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i294.GlobalContext>(() => _i294.GlobalContext());
    gh.factory<_i590.AccountDataSource>(() => _i360.ImplAccountDataSource());
    gh.factory<_i86.HomeRemoteDataSource>(
        () => _i331.ImplHomeRemoteDataSource());
    gh.factory<_i581.NotificationDataSource>(
        () => _i949.ImplNotificationDataSource());
    gh.factory<_i650.AccountRepository>(() => _i177.ImplAccountRepository());
    gh.factory<_i292.AuthRepository>(() => _i262.ImplAuthRepository());
    gh.factory<_i517.OrdersRepository>(() => _i662.ImplOrdersRepository());
    gh.factory<_i877.OrdersDataSource>(() => _i822.ImplOrdersDataSource());
    gh.factory<_i538.AuthDataSource>(() => _i99.ImplAuthDataSource());
    gh.factory<_i132.NotificationsRepository>(
        () => _i950.ImplNotificationsRepository());
    gh.factory<_i98.IStorageHelper>(() => _i1041.StorageHelper());
    gh.factory<_i331.BaseRepository>(() => _i990.ImplBaseRepository());
    return this;
  }
}

class _$InjectionModule extends _i533.InjectionModule {}
