class ERPUser {
  final String? uid;
  ERPUser({this.uid});
}

class UserDetails {
  final String? uid;
  final String? email;
  final bool? isAdmin;
  final List? favoriteList;
  final List? expandedList;
  final String? name;

  UserDetails({
    this.uid,
    this.email,
    this.isAdmin,
    this.favoriteList,
    this.expandedList,
    this.name,
  });
}
