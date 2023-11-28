class BuyInfo{
  String title;
  String contents;
  bool isExpand;

  BuyInfo({
   required this.title,
   required this.contents,
   required this.isExpand
  });

  BuyInfo copyWith({
    String? title,
    String? contents,
    bool? isExpand,
  }) {
    return BuyInfo(
      title: title ?? this.title,
      contents: contents ?? this.contents,
      isExpand: isExpand ?? this.isExpand,
    );
  }
}