// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class CharactersModel {
  String? name;
  List<String>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  int? yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  Map<String, dynamic>? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  List<String>? alternateActors;
  bool? alive;
  String? image;
  CharactersModel({
    this.name,
    this.alternateNames,
    this.species,
    this.gender,
    this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    this.wizard,
    this.ancestry,
    this.eyeColour,
    this.hairColour,
    this.wand,
    this.patronus,
    this.hogwartsStudent,
    this.hogwartsStaff,
    this.actor,
    this.alternateActors,
    this.alive,
    this.image,
  });

  CharactersModel copyWith({
    String? name,
    List<String>? alternateNames,
    String? species,
    String? gender,
    String? house,
    String? dateOfBirth,
    int? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Map<String, dynamic>? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String>? alternateActors,
    bool? alive,
    String? image,
  }) {
    return CharactersModel(
      name: name ?? this.name,
      alternateNames: alternateNames ?? this.alternateNames,
      species: species ?? this.species,
      gender: gender ?? this.gender,
      house: house ?? this.house,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      yearOfBirth: yearOfBirth ?? this.yearOfBirth,
      wizard: wizard ?? this.wizard,
      ancestry: ancestry ?? this.ancestry,
      eyeColour: eyeColour ?? this.eyeColour,
      hairColour: hairColour ?? this.hairColour,
      wand: wand ?? this.wand,
      patronus: patronus ?? this.patronus,
      hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
      hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
      actor: actor ?? this.actor,
      alternateActors: alternateActors ?? this.alternateActors,
      alive: alive ?? this.alive,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'alternateNames': alternateNames,
      'species': species,
      'gender': gender,
      'house': house,
      'dateOfBirth': dateOfBirth,
      'yearOfBirth': yearOfBirth,
      'wizard': wizard,
      'ancestry': ancestry,
      'eyeColour': eyeColour,
      'hairColour': hairColour,
      'wand': wand,
      'patronus': patronus,
      'hogwartsStudent': hogwartsStudent,
      'hogwartsStaff': hogwartsStaff,
      'actor': actor,
      'alternateActors': alternateActors,
      'alive': alive,
      'image': image,
    };
  }

  factory CharactersModel.fromMap(Map<String, dynamic> map) {
    return CharactersModel(
      name: map['name'] != null ? map['name'] as String : null,
      alternateNames: map['alternateNames'] != null
          ? List<String>.from((map['alternateNames'] as List<String>))
          : null,
      species: map['species'] != null ? map['species'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      house: map['house'] != null ? map['house'] as String : null,
      dateOfBirth:
          map['dateOfBirth'] != null ? map['dateOfBirth'] as String : null,
      yearOfBirth:
          map['yearOfBirth'] != null ? map['yearOfBirth'] as int : null,
      wizard: map['wizard'] != null ? map['wizard'] as bool : null,
      ancestry: map['ancestry'] != null ? map['ancestry'] as String : null,
      eyeColour: map['eyeColour'] != null ? map['eyeColour'] as String : null,
      hairColour:
          map['hairColour'] != null ? map['hairColour'] as String : null,
      wand: map['wand'] != null
          ? Map<String, dynamic>.from((map['wand'] as Map<String, dynamic>))
          : null,
      patronus: map['patronus'] != null ? map['patronus'] as String : null,
      hogwartsStudent: map['hogwartsStudent'] != null
          ? map['hogwartsStudent'] as bool
          : null,
      hogwartsStaff:
          map['hogwartsStaff'] != null ? map['hogwartsStaff'] as bool : null,
      actor: map['actor'] != null ? map['actor'] as String : null,
      alternateActors: map['alternateActors'] != null
          ? List<String>.from((map['alternateActors'] as List<String>))
          : null,
      alive: map['alive'] != null ? map['alive'] as bool : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharactersModel.fromJson(String source) =>
      CharactersModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'characters(name: $name, alternateNames: $alternateNames, species: $species, gender: $gender, house: $house, dateOfBirth: $dateOfBirth, yearOfBirth: $yearOfBirth, wizard: $wizard, ancestry: $ancestry, eyeColour: $eyeColour, hairColour: $hairColour, wand: $wand, patronus: $patronus, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, actor: $actor, alternateActors: $alternateActors, alive: $alive, image: $image)';
  }

  @override
  bool operator ==(covariant CharactersModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        listEquals(other.alternateNames, alternateNames) &&
        other.species == species &&
        other.gender == gender &&
        other.house == house &&
        other.dateOfBirth == dateOfBirth &&
        other.yearOfBirth == yearOfBirth &&
        other.wizard == wizard &&
        other.ancestry == ancestry &&
        other.eyeColour == eyeColour &&
        other.hairColour == hairColour &&
        mapEquals(other.wand, wand) &&
        other.patronus == patronus &&
        other.hogwartsStudent == hogwartsStudent &&
        other.hogwartsStaff == hogwartsStaff &&
        other.actor == actor &&
        listEquals(other.alternateActors, alternateActors) &&
        other.alive == alive &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        alternateNames.hashCode ^
        species.hashCode ^
        gender.hashCode ^
        house.hashCode ^
        dateOfBirth.hashCode ^
        yearOfBirth.hashCode ^
        wizard.hashCode ^
        ancestry.hashCode ^
        eyeColour.hashCode ^
        hairColour.hashCode ^
        wand.hashCode ^
        patronus.hashCode ^
        hogwartsStudent.hashCode ^
        hogwartsStaff.hashCode ^
        actor.hashCode ^
        alternateActors.hashCode ^
        alive.hashCode ^
        image.hashCode;
  }
}
