class socials {
  final String name;
  final String imgurl;
  final String url;

  socials({required this.name, required this.imgurl, required this.url});

  factory socials.fromMap(Map<String, dynamic> map) {
    return socials(
      name: map["name"],
      imgurl: map["imgurl"],
      url: map["url"],
    );
  }

  toList() => {
        "name": name,
        "imgurl": imgurl,
        "url": url,
      };
}

List<socials> socials_list = [];
