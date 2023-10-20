typedef AddressEntity = MapEntry<dynamic, Address>;

class Address {
  final int idx;
  final String receiveName;
  final String phone;
  final String address1;
  final String address2;
  final bool isBasic;
  bool isSelect;

  Address({
    required this.idx,
    required this.receiveName,
    required this.phone,
    required this.address1,
    required this.address2,
    required this.isBasic,
    required this.isSelect,
  });

  Address copyWith({
    int? idx,
    String? receiveName,
    String? phone,
    String? address1,
    String? address2,
    bool? isBasic,
    bool? isSelect,
  }) {
    return Address(
      idx: idx ?? this.idx,
      receiveName: receiveName ?? this.receiveName,
      phone: phone ?? this.phone,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      isBasic: isBasic ?? this.isBasic,
      isSelect: isBasic ?? this.isBasic,
    );
  }
}
