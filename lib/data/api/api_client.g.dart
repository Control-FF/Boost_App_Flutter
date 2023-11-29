// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://boost.bnewb.kr';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<TokenResponse> login(
    phone,
    pw,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'phone': phone,
      'pw': pw,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/api/user/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TokenResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TokenResponse> refreshToken() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/refresh',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TokenResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AddressResponse> getAddressList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AddressResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/shipping-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AddressResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AddressDetailResponse> getAddressDetail(idx) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AddressDetailResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/shipping/${idx}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AddressDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> addAddress(
    subject,
    name,
    phone,
    zonecode,
    address1,
    address2,
    address3,
    tel,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'subject': subject,
      'name': name,
      'phone': phone,
      'zonecode': zonecode,
      'address1': address1,
      'address2': address2,
      'address3': address3,
      'tel': tel,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/api/user/shipping',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> updateAddress(
    idx,
    subject,
    name,
    phone,
    zonecode,
    address1,
    address2,
    address3,
    is_default,
    tel,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'subject': subject,
      'name': name,
      'phone': phone,
      'zonecode': zonecode,
      'address1': address1,
      'address2': address2,
      'address3': address3,
      'is_default': is_default,
      'tel': tel,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/api/user/shipping/${idx}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> setAddressBasic(idx) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/default-shipping/${idx}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> deleteAddress(idx) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/shipping/${idx}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CategoryResponse> getCategory(caId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'ca_id': caId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CategoryResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/category',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CategoryResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> authPhone(phone) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'phone': phone};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/auth-phone',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> authNumber(
    phone,
    code,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'phone': phone,
      'code': code,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/auth-phone-confrim',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> resetPassword(
    phone,
    pw1,
    pw2,
    code,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'phone': phone,
      'pw1': pw1,
      'pw2': pw2,
      'code': code,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/change-password',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> registerUser(
    type,
    name,
    phone,
    pw1,
    pw2,
    auth_code,
    recommend_code,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (type != null) {
      _data.fields.add(MapEntry(
        'type',
        type,
      ));
    }
    if (name != null) {
      _data.fields.add(MapEntry(
        'name',
        name,
      ));
    }
    if (phone != null) {
      _data.fields.add(MapEntry(
        'phone',
        phone,
      ));
    }
    if (pw1 != null) {
      _data.fields.add(MapEntry(
        'pw1',
        pw1,
      ));
    }
    if (pw2 != null) {
      _data.fields.add(MapEntry(
        'pw2',
        pw2,
      ));
    }
    if (auth_code != null) {
      _data.fields.add(MapEntry(
        'auth_code',
        auth_code,
      ));
    }
    if (recommend_code != null) {
      _data.fields.add(MapEntry(
        'recommend_code',
        recommend_code,
      ));
    }
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> registerBizUser(
    type,
    name,
    phone,
    pw1,
    pw2,
    auth_code,
    recommend_code,
    biz_license,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (type != null) {
      _data.fields.add(MapEntry(
        'type',
        type,
      ));
    }
    if (name != null) {
      _data.fields.add(MapEntry(
        'name',
        name,
      ));
    }
    if (phone != null) {
      _data.fields.add(MapEntry(
        'phone',
        phone,
      ));
    }
    if (pw1 != null) {
      _data.fields.add(MapEntry(
        'pw1',
        pw1,
      ));
    }
    if (pw2 != null) {
      _data.fields.add(MapEntry(
        'pw2',
        pw2,
      ));
    }
    if (auth_code != null) {
      _data.fields.add(MapEntry(
        'auth_code',
        auth_code,
      ));
    }
    if (recommend_code != null) {
      _data.fields.add(MapEntry(
        'recommend_code',
        recommend_code,
      ));
    }
    _data.files.add(MapEntry(
      'biz_license',
      MultipartFile.fromFileSync(
        biz_license.path,
        filename: biz_license.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MainResponse> shopMain() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<MainResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MainResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserInfoResponse> getMyInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserInfoResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/mypage',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserInfoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> verifyPassword(password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'pw': password};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/verify-password',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> updateMyInfo(
    nickname,
    currentPassword,
    newPassword1,
    newPassword2,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'nickname': nickname,
      'old_pw': currentPassword,
      'pw2': newPassword1,
      'pw3': newPassword2,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CouponResponse> getCouponList(status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'status': status};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CouponResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/coupon',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CouponResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> couponRegister(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/coupon',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PaymentResponse> paymentList(page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PaymentResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/payment-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PaymentResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderResponse> orderList(status) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'status': status};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<OrderResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/order-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PointResponse> pointList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PointResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/point',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PointResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<KeywordRankResponse> keywordRankList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<KeywordRankResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/load-popular-keyword',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = KeywordRankResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<KeywordAutoResponse> keywordAutoList(keyword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'keyword': keyword};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<KeywordAutoResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/autocomplete',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = KeywordAutoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<KeywordResultResponse> keywordResultList(
    keyword,
    sort,
    page,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'keyword': keyword,
      r'sort': sort,
      r'pageNum': page,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<KeywordResultResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/search',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = KeywordResultResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CardResponse> cardList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CardResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/get-billingkey',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CardResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> deleteCard(billingKeyId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'billingKey_id': billingKeyId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/delete-billingkey',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> updateCard(
    cdNo,
    subject,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'subject': subject};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/card/${cdNo}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> registerCard(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/add-billingkey',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> defaultCard(billingKeyId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'billingKey_id': billingKeyId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/default-card',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProductDetailResponse> productDetail(itId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'it_id': itId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductDetailResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/item',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProductDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderRequestResponse> buyNow(
    itId,
    qty,
    ioNo,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'it_id': itId,
      r'ct_qty': qty,
      r'io_no': ioNo,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OrderRequestResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/buy-now',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InquiryResponse> inquiry(
    page,
    idId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'it_id': idId,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<InquiryResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/item-inquiry',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InquiryResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProductReviewResponse> productReview(
    page,
    idId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'it_id': idId,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProductReviewResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/item-reviews',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProductReviewResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> inquiryWrite(
    idId,
    iqType,
    question,
    isSecret,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'it_id': idId,
      'iq_type': iqType,
      'question': question,
      'is_secret': isSecret,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/item-inquiry',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NoticeResponse> noticeList(
    isHtml,
    keyword,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'isHTML': isHtml,
      r'keyword': keyword,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<NoticeResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/notice',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NoticeResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PolicyResponse> policyList(coId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'co_id': coId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PolicyResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/user/co-content',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PolicyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CartResponse> cartList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CartResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/cart',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CartResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> addCart(
    itId,
    qty,
    ioNo,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'it_id': itId,
      'ct_qty': qty,
      'io_no': ioNo,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/cart',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderConfirmResponse> orderConfirm(odId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'od_id': odId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OrderConfirmResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/order-confirm',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderConfirmResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<OrderRequestResponse> addOrder(map) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(map);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<OrderRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/order',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = OrderRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> setPayment(odId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'od_id': odId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/payment',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> registerReview(
    ct_id,
    is_subject,
    is_content,
    is_score,
    review_img,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (ct_id != null) {
      _data.fields.add(MapEntry(
        'ct_id',
        ct_id,
      ));
    }
    if (is_subject != null) {
      _data.fields.add(MapEntry(
        'is_subject',
        is_subject,
      ));
    }
    if (is_content != null) {
      _data.fields.add(MapEntry(
        'is_content',
        is_content,
      ));
    }
    if (is_score != null) {
      _data.fields.add(MapEntry(
        'is_score',
        is_score,
      ));
    }
    if (review_img != null) {
      _data.files.addAll(review_img.map((i) => MapEntry('review_img', i)));
    }
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/item-reviews',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> updateReview(
    isId,
    is_subject,
    is_content,
    is_score,
    review_img,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    if (is_subject != null) {
      _data.fields.add(MapEntry(
        'is_subject',
        is_subject,
      ));
    }
    if (is_content != null) {
      _data.fields.add(MapEntry(
        'is_content',
        is_content,
      ));
    }
    if (is_score != null) {
      _data.fields.add(MapEntry(
        'is_score',
        is_score,
      ));
    }
    if (review_img != null) {
      _data.files.addAll(review_img.map((i) => MapEntry('review_img', i)));
    }
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'PATCH',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/review/${isId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DataResponse> deleteReview(isId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataResponse>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/shop/review/${isId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DataResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
