import 'package:flutter/material.dart';

class ColorObject{
  final String _colorType;
  final Color _color;

  ColorObject(this._colorType, this._color);

  get type => this._colorType;
  get color => this._color;

}