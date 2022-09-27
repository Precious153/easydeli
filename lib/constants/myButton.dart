import 'package:flutter/material.dart';

class myButton extends StatelessWidget{
  final Widget child;
  final Function()? onTap;
  final Color? color;
  final Alignment? alignment;
  final double? height;
  final double? width;
  final double? borderRadius;
  final BoxShape? boxShape;
  final List<BoxShadow>? boxshadow;

  const myButton({super.key, this.onTap, this.color, this.alignment, this.height, this.width, this.boxShape, this.boxshadow, required this.child, this.borderRadius});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: alignment,
        height:  height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius ?? 20),
        ),
        child: Center(child: child),
      ),
    );
  }
}
