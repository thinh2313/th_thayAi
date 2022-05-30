class Categories {
  int id;
  String title;
  String image;
  int idcate;

  Categories({ this.id, this.title,  this.image,this.idcate});

  static List<Categories> init() {
    List<Categories> data = [
      Categories(id: 1, title: "CircleK", image: "assets/images/ic_circlek.png",idcate:1),
      Categories(id: 2, title: "HighLand", image: "assets/images/ic_highland.jpeg",idcate:2),
      Categories(id: 3, title: "MiniStop", image: "assets/images/ic_ministop.png",idcate:3),
      Categories(id: 4, title: "SevenEleven", image: "assets/images/ic_seveneleven.png",idcate:4),
      Categories(id: 5, title: "VinMart", image: "assets/images/ic_vinmart.jpg",idcate:4),

    ];
    return data;
  }
}
