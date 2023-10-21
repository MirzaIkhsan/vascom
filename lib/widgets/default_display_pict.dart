import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultDisplayPict extends StatelessWidget {
  const DefaultDisplayPict({
    super.key,
    this.name,
    this.pict,
    this.size = 80,
  });

  final String? pict;
  final String? name;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (pict == null && name == null) {
      return Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        child: Align(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: size / 2,
          ),
        ),
      );
    }

    if (pict == null || pict!.isEmpty) {
      return _DefaultDisplayAvatar(name: name!, size: size);
    }

    return ClipOval(
      child: Image.network(
        pict!,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) {
          return _DefaultDisplayAvatar(name: name!, size: size);
        },
      ),
    );
  }
}

class _DefaultDisplayAvatar extends StatelessWidget {
  const _DefaultDisplayAvatar({
    required this.name,
    required this.size,
  });

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (name.isEmpty) {
      return displayContainer(
        Icon(Icons.person, color: Colors.white, size: size / 2),
      );
    }

    final words = name.split(" ");
    String combinedChar = words.first[0];
    if (words.length > 1) combinedChar += words.last[0];
    return displayContainer(
      Text(
        combinedChar,
        style: TextUtils.gilroyStyle.bold28White.copyWith(
          fontSize: size / 2,
        ),
      ),
    );
  }

  Widget displayContainer(Widget child) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Align(child: child),
    );
  }
}
