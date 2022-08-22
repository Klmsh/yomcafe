import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class menuGridList extends StatelessWidget {

  final int index;
  const menuGridList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,
        mainAxisSpacing: 32,
        crossAxisSpacing: 32,
        childAspectRatio: 8/9,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: listIndexItem[index].photo.map<Widget>( (photo) {
          return _GridDemoPhotoItem(
            photo: photo,
          );
        }).toList());

  }
}

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.center,
      child: Text(text, style: textItem_1(blackColor)),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget {
  const _GridDemoPhotoItem({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final PhotoList photo;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        margin: EdgeInsets.only(bottom: 64),
        child: Image.asset(photo.imageURL,
          fit: BoxFit.cover,
        ),
      ),
    );

    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black12,
          title: _GridTitleText(photo.title),
        ),
      ),
      child: image,
    );
  }}

class listIndex{
  listIndex({
    required this.index,
    required this.photo
  });

  final int index;
  final List<PhotoList> photo;

}

class PhotoList {
  PhotoList({
    required this.imageURL,
    required this.title,
  });

  final String imageURL;
  final String title;
}