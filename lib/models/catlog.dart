class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "i Phone 12 Pro Max",
        desc: "64GB Storage",
        price: 57900,
        color: "#0d0100",
        imageurl:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-80694/Apple-iPhone-12-Pro-Max-Blue-Yoast-image-packshot-review.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String imageurl;
  final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.imageurl,
      required this.price});
}
