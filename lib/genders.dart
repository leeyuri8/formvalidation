import 'package:flutter/cupertino.dart';

class Genders{
  const Genders(this.name);
  final String name;
}
List <Genders> gender = <Genders>[
  const Genders('male'),
   const Genders('female'),
];


class Countries{
  final String name;
  const Countries(this.name);

}
List <Countries> country = <Countries>[
  const Countries('Eygpt'),
  const Countries('Algeria'),
  const Countries('Palestine'),
  const Countries('Lebanon'),
  const Countries('Jordan'),
  const Countries('Iraq'),
  const Countries('Yemen'),

];