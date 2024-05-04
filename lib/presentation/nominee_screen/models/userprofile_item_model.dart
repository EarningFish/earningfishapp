/// This class is used in the [userprofile_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.email,
      this.nutanjadav,
      this.edit,
      this.phonenumber,
      this.bod04061999,
      this.weight,
      this.id}) {
    email = email ?? "Jerome@gmail.com";
    nutanjadav = nutanjadav ?? "Jerome Bell";
    edit = edit ?? "Edit ";
    phonenumber = phonenumber ?? "Phone Number: +918780108264";
    bod04061999 = bod04061999 ?? "BOD: 04/06/1999";
    weight = weight ?? "National ID No. : EQVPM7592G";
    id = id ?? "";
  }

  String? email;

  String? nutanjadav;

  String? edit;

  String? phonenumber;

  String? bod04061999;

  String? weight;

  String? id;
}
