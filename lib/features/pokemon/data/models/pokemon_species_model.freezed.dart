// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonSpeciesModel {

@JsonKey(name: 'gender_rate') int get genderRate;@JsonKey(name: 'flavor_text_entries') List<FlavorTextEntry> get flavorTextEntries; List<GenusEntry> get genera;
/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith => _$PokemonSpeciesModelCopyWithImpl<PokemonSpeciesModel>(this as PokemonSpeciesModel, _$identity);

  /// Serializes this PokemonSpeciesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpeciesModel&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other.flavorTextEntries, flavorTextEntries)&&const DeepCollectionEquality().equals(other.genera, genera));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genderRate,const DeepCollectionEquality().hash(flavorTextEntries),const DeepCollectionEquality().hash(genera));

@override
String toString() {
  return 'PokemonSpeciesModel(genderRate: $genderRate, flavorTextEntries: $flavorTextEntries, genera: $genera)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesModelCopyWith<$Res>  {
  factory $PokemonSpeciesModelCopyWith(PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) _then) = _$PokemonSpeciesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'gender_rate') int genderRate,@JsonKey(name: 'flavor_text_entries') List<FlavorTextEntry> flavorTextEntries, List<GenusEntry> genera
});




}
/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final PokemonSpeciesModel _self;
  final $Res Function(PokemonSpeciesModel) _then;

/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genderRate = null,Object? flavorTextEntries = null,Object? genera = null,}) {
  return _then(_self.copyWith(
genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,flavorTextEntries: null == flavorTextEntries ? _self.flavorTextEntries : flavorTextEntries // ignore: cast_nullable_to_non_nullable
as List<FlavorTextEntry>,genera: null == genera ? _self.genera : genera // ignore: cast_nullable_to_non_nullable
as List<GenusEntry>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonSpeciesModel].
extension PokemonSpeciesModelPatterns on PokemonSpeciesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpeciesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpeciesModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpeciesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'gender_rate')  int genderRate, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextEntry> flavorTextEntries,  List<GenusEntry> genera)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that.genderRate,_that.flavorTextEntries,_that.genera);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'gender_rate')  int genderRate, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextEntry> flavorTextEntries,  List<GenusEntry> genera)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel():
return $default(_that.genderRate,_that.flavorTextEntries,_that.genera);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'gender_rate')  int genderRate, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextEntry> flavorTextEntries,  List<GenusEntry> genera)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that.genderRate,_that.flavorTextEntries,_that.genera);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpeciesModel implements PokemonSpeciesModel {
  const _PokemonSpeciesModel({@JsonKey(name: 'gender_rate') required this.genderRate, @JsonKey(name: 'flavor_text_entries') required final  List<FlavorTextEntry> flavorTextEntries, required final  List<GenusEntry> genera}): _flavorTextEntries = flavorTextEntries,_genera = genera;
  factory _PokemonSpeciesModel.fromJson(Map<String, dynamic> json) => _$PokemonSpeciesModelFromJson(json);

@override@JsonKey(name: 'gender_rate') final  int genderRate;
 final  List<FlavorTextEntry> _flavorTextEntries;
@override@JsonKey(name: 'flavor_text_entries') List<FlavorTextEntry> get flavorTextEntries {
  if (_flavorTextEntries is EqualUnmodifiableListView) return _flavorTextEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flavorTextEntries);
}

 final  List<GenusEntry> _genera;
@override List<GenusEntry> get genera {
  if (_genera is EqualUnmodifiableListView) return _genera;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genera);
}


/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesModelCopyWith<_PokemonSpeciesModel> get copyWith => __$PokemonSpeciesModelCopyWithImpl<_PokemonSpeciesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpeciesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpeciesModel&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other._flavorTextEntries, _flavorTextEntries)&&const DeepCollectionEquality().equals(other._genera, _genera));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genderRate,const DeepCollectionEquality().hash(_flavorTextEntries),const DeepCollectionEquality().hash(_genera));

@override
String toString() {
  return 'PokemonSpeciesModel(genderRate: $genderRate, flavorTextEntries: $flavorTextEntries, genera: $genera)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesModelCopyWith<$Res> implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$PokemonSpeciesModelCopyWith(_PokemonSpeciesModel value, $Res Function(_PokemonSpeciesModel) _then) = __$PokemonSpeciesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'gender_rate') int genderRate,@JsonKey(name: 'flavor_text_entries') List<FlavorTextEntry> flavorTextEntries, List<GenusEntry> genera
});




}
/// @nodoc
class __$PokemonSpeciesModelCopyWithImpl<$Res>
    implements _$PokemonSpeciesModelCopyWith<$Res> {
  __$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesModel _self;
  final $Res Function(_PokemonSpeciesModel) _then;

/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genderRate = null,Object? flavorTextEntries = null,Object? genera = null,}) {
  return _then(_PokemonSpeciesModel(
genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,flavorTextEntries: null == flavorTextEntries ? _self._flavorTextEntries : flavorTextEntries // ignore: cast_nullable_to_non_nullable
as List<FlavorTextEntry>,genera: null == genera ? _self._genera : genera // ignore: cast_nullable_to_non_nullable
as List<GenusEntry>,
  ));
}


}


/// @nodoc
mixin _$FlavorTextEntry {

@JsonKey(name: 'flavor_text') String get flavorText; LanguageRef get language;
/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith => _$FlavorTextEntryCopyWithImpl<FlavorTextEntry>(this as FlavorTextEntry, _$identity);

  /// Serializes this FlavorTextEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlavorTextEntry&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flavorText,language);

@override
String toString() {
  return 'FlavorTextEntry(flavorText: $flavorText, language: $language)';
}


}

/// @nodoc
abstract mixin class $FlavorTextEntryCopyWith<$Res>  {
  factory $FlavorTextEntryCopyWith(FlavorTextEntry value, $Res Function(FlavorTextEntry) _then) = _$FlavorTextEntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'flavor_text') String flavorText, LanguageRef language
});


$LanguageRefCopyWith<$Res> get language;

}
/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._self, this._then);

  final FlavorTextEntry _self;
  final $Res Function(FlavorTextEntry) _then;

/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? flavorText = null,Object? language = null,}) {
  return _then(_self.copyWith(
flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageRef,
  ));
}
/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageRefCopyWith<$Res> get language {
  
  return $LanguageRefCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlavorTextEntry].
extension FlavorTextEntryPatterns on FlavorTextEntry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlavorTextEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlavorTextEntry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlavorTextEntry value)  $default,){
final _that = this;
switch (_that) {
case _FlavorTextEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlavorTextEntry value)?  $default,){
final _that = this;
switch (_that) {
case _FlavorTextEntry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'flavor_text')  String flavorText,  LanguageRef language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlavorTextEntry() when $default != null:
return $default(_that.flavorText,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'flavor_text')  String flavorText,  LanguageRef language)  $default,) {final _that = this;
switch (_that) {
case _FlavorTextEntry():
return $default(_that.flavorText,_that.language);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'flavor_text')  String flavorText,  LanguageRef language)?  $default,) {final _that = this;
switch (_that) {
case _FlavorTextEntry() when $default != null:
return $default(_that.flavorText,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlavorTextEntry implements FlavorTextEntry {
  const _FlavorTextEntry({@JsonKey(name: 'flavor_text') required this.flavorText, required this.language});
  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) => _$FlavorTextEntryFromJson(json);

@override@JsonKey(name: 'flavor_text') final  String flavorText;
@override final  LanguageRef language;

/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlavorTextEntryCopyWith<_FlavorTextEntry> get copyWith => __$FlavorTextEntryCopyWithImpl<_FlavorTextEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlavorTextEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlavorTextEntry&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,flavorText,language);

@override
String toString() {
  return 'FlavorTextEntry(flavorText: $flavorText, language: $language)';
}


}

/// @nodoc
abstract mixin class _$FlavorTextEntryCopyWith<$Res> implements $FlavorTextEntryCopyWith<$Res> {
  factory _$FlavorTextEntryCopyWith(_FlavorTextEntry value, $Res Function(_FlavorTextEntry) _then) = __$FlavorTextEntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'flavor_text') String flavorText, LanguageRef language
});


@override $LanguageRefCopyWith<$Res> get language;

}
/// @nodoc
class __$FlavorTextEntryCopyWithImpl<$Res>
    implements _$FlavorTextEntryCopyWith<$Res> {
  __$FlavorTextEntryCopyWithImpl(this._self, this._then);

  final _FlavorTextEntry _self;
  final $Res Function(_FlavorTextEntry) _then;

/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? flavorText = null,Object? language = null,}) {
  return _then(_FlavorTextEntry(
flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageRef,
  ));
}

/// Create a copy of FlavorTextEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageRefCopyWith<$Res> get language {
  
  return $LanguageRefCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$GenusEntry {

 String get genus; LanguageRef get language;
/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenusEntryCopyWith<GenusEntry> get copyWith => _$GenusEntryCopyWithImpl<GenusEntry>(this as GenusEntry, _$identity);

  /// Serializes this GenusEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenusEntry&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genus,language);

@override
String toString() {
  return 'GenusEntry(genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class $GenusEntryCopyWith<$Res>  {
  factory $GenusEntryCopyWith(GenusEntry value, $Res Function(GenusEntry) _then) = _$GenusEntryCopyWithImpl;
@useResult
$Res call({
 String genus, LanguageRef language
});


$LanguageRefCopyWith<$Res> get language;

}
/// @nodoc
class _$GenusEntryCopyWithImpl<$Res>
    implements $GenusEntryCopyWith<$Res> {
  _$GenusEntryCopyWithImpl(this._self, this._then);

  final GenusEntry _self;
  final $Res Function(GenusEntry) _then;

/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genus = null,Object? language = null,}) {
  return _then(_self.copyWith(
genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageRef,
  ));
}
/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageRefCopyWith<$Res> get language {
  
  return $LanguageRefCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [GenusEntry].
extension GenusEntryPatterns on GenusEntry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenusEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenusEntry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenusEntry value)  $default,){
final _that = this;
switch (_that) {
case _GenusEntry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenusEntry value)?  $default,){
final _that = this;
switch (_that) {
case _GenusEntry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String genus,  LanguageRef language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenusEntry() when $default != null:
return $default(_that.genus,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String genus,  LanguageRef language)  $default,) {final _that = this;
switch (_that) {
case _GenusEntry():
return $default(_that.genus,_that.language);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String genus,  LanguageRef language)?  $default,) {final _that = this;
switch (_that) {
case _GenusEntry() when $default != null:
return $default(_that.genus,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GenusEntry implements GenusEntry {
  const _GenusEntry({required this.genus, required this.language});
  factory _GenusEntry.fromJson(Map<String, dynamic> json) => _$GenusEntryFromJson(json);

@override final  String genus;
@override final  LanguageRef language;

/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenusEntryCopyWith<_GenusEntry> get copyWith => __$GenusEntryCopyWithImpl<_GenusEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenusEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenusEntry&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genus,language);

@override
String toString() {
  return 'GenusEntry(genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class _$GenusEntryCopyWith<$Res> implements $GenusEntryCopyWith<$Res> {
  factory _$GenusEntryCopyWith(_GenusEntry value, $Res Function(_GenusEntry) _then) = __$GenusEntryCopyWithImpl;
@override @useResult
$Res call({
 String genus, LanguageRef language
});


@override $LanguageRefCopyWith<$Res> get language;

}
/// @nodoc
class __$GenusEntryCopyWithImpl<$Res>
    implements _$GenusEntryCopyWith<$Res> {
  __$GenusEntryCopyWithImpl(this._self, this._then);

  final _GenusEntry _self;
  final $Res Function(_GenusEntry) _then;

/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genus = null,Object? language = null,}) {
  return _then(_GenusEntry(
genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageRef,
  ));
}

/// Create a copy of GenusEntry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageRefCopyWith<$Res> get language {
  
  return $LanguageRefCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$LanguageRef {

 String get name;
/// Create a copy of LanguageRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageRefCopyWith<LanguageRef> get copyWith => _$LanguageRefCopyWithImpl<LanguageRef>(this as LanguageRef, _$identity);

  /// Serializes this LanguageRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageRef&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageRef(name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguageRefCopyWith<$Res>  {
  factory $LanguageRefCopyWith(LanguageRef value, $Res Function(LanguageRef) _then) = _$LanguageRefCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$LanguageRefCopyWithImpl<$Res>
    implements $LanguageRefCopyWith<$Res> {
  _$LanguageRefCopyWithImpl(this._self, this._then);

  final LanguageRef _self;
  final $Res Function(LanguageRef) _then;

/// Create a copy of LanguageRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageRef].
extension LanguageRefPatterns on LanguageRef {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageRef() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageRef value)  $default,){
final _that = this;
switch (_that) {
case _LanguageRef():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageRef value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageRef() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageRef() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _LanguageRef():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _LanguageRef() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageRef implements LanguageRef {
  const _LanguageRef({required this.name});
  factory _LanguageRef.fromJson(Map<String, dynamic> json) => _$LanguageRefFromJson(json);

@override final  String name;

/// Create a copy of LanguageRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageRefCopyWith<_LanguageRef> get copyWith => __$LanguageRefCopyWithImpl<_LanguageRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageRef&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageRef(name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguageRefCopyWith<$Res> implements $LanguageRefCopyWith<$Res> {
  factory _$LanguageRefCopyWith(_LanguageRef value, $Res Function(_LanguageRef) _then) = __$LanguageRefCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$LanguageRefCopyWithImpl<$Res>
    implements _$LanguageRefCopyWith<$Res> {
  __$LanguageRefCopyWithImpl(this._self, this._then);

  final _LanguageRef _self;
  final $Res Function(_LanguageRef) _then;

/// Create a copy of LanguageRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_LanguageRef(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
