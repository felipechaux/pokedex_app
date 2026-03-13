// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonModel {

 int get id; String get name; int get height; int get weight; List<PokemonTypeSlot> get types; List<PokemonStatSlot> get stats; List<PokemonAbilitySlot> get abilities; PokemonSprites get sprites;
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonModelCopyWith<PokemonModel> get copyWith => _$PokemonModelCopyWithImpl<PokemonModel>(this as PokemonModel, _$identity);

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(abilities),sprites);

@override
String toString() {
  return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, stats: $stats, abilities: $abilities, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class $PokemonModelCopyWith<$Res>  {
  factory $PokemonModelCopyWith(PokemonModel value, $Res Function(PokemonModel) _then) = _$PokemonModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int height, int weight, List<PokemonTypeSlot> types, List<PokemonStatSlot> stats, List<PokemonAbilitySlot> abilities, PokemonSprites sprites
});


$PokemonSpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonModelCopyWithImpl<$Res>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._self, this._then);

  final PokemonModel _self;
  final $Res Function(PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? types = null,Object? stats = null,Object? abilities = null,Object? sprites = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeSlot>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatSlot>,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbilitySlot>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSprites,
  ));
}
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<$Res> get sprites {
  
  return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonModel].
extension PokemonModelPatterns on PokemonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<PokemonTypeSlot> types,  List<PokemonStatSlot> stats,  List<PokemonAbilitySlot> abilities,  PokemonSprites sprites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.stats,_that.abilities,_that.sprites);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<PokemonTypeSlot> types,  List<PokemonStatSlot> stats,  List<PokemonAbilitySlot> abilities,  PokemonSprites sprites)  $default,) {final _that = this;
switch (_that) {
case _PokemonModel():
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.stats,_that.abilities,_that.sprites);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int height,  int weight,  List<PokemonTypeSlot> types,  List<PokemonStatSlot> stats,  List<PokemonAbilitySlot> abilities,  PokemonSprites sprites)?  $default,) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.types,_that.stats,_that.abilities,_that.sprites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonModel implements PokemonModel {
  const _PokemonModel({required this.id, required this.name, required this.height, required this.weight, required final  List<PokemonTypeSlot> types, required final  List<PokemonStatSlot> stats, required final  List<PokemonAbilitySlot> abilities, required this.sprites}): _types = types,_stats = stats,_abilities = abilities;
  factory _PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int height;
@override final  int weight;
 final  List<PokemonTypeSlot> _types;
@override List<PokemonTypeSlot> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<PokemonStatSlot> _stats;
@override List<PokemonStatSlot> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<PokemonAbilitySlot> _abilities;
@override List<PokemonAbilitySlot> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  PokemonSprites sprites;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonModelCopyWith<_PokemonModel> get copyWith => __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_abilities),sprites);

@override
String toString() {
  return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, stats: $stats, abilities: $abilities, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class _$PokemonModelCopyWith<$Res> implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(_PokemonModel value, $Res Function(_PokemonModel) _then) = __$PokemonModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int height, int weight, List<PokemonTypeSlot> types, List<PokemonStatSlot> stats, List<PokemonAbilitySlot> abilities, PokemonSprites sprites
});


@override $PokemonSpritesCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(this._self, this._then);

  final _PokemonModel _self;
  final $Res Function(_PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? types = null,Object? stats = null,Object? abilities = null,Object? sprites = null,}) {
  return _then(_PokemonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeSlot>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatSlot>,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbilitySlot>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSprites,
  ));
}

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<$Res> get sprites {
  
  return $PokemonSpritesCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$PokemonTypeSlot {

 int get slot; PokemonTypeRef get type;
/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeSlotCopyWith<PokemonTypeSlot> get copyWith => _$PokemonTypeSlotCopyWithImpl<PokemonTypeSlot>(this as PokemonTypeSlot, _$identity);

  /// Serializes this PokemonTypeSlot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonTypeSlot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeSlot(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeSlotCopyWith<$Res>  {
  factory $PokemonTypeSlotCopyWith(PokemonTypeSlot value, $Res Function(PokemonTypeSlot) _then) = _$PokemonTypeSlotCopyWithImpl;
@useResult
$Res call({
 int slot, PokemonTypeRef type
});


$PokemonTypeRefCopyWith<$Res> get type;

}
/// @nodoc
class _$PokemonTypeSlotCopyWithImpl<$Res>
    implements $PokemonTypeSlotCopyWith<$Res> {
  _$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final PokemonTypeSlot _self;
  final $Res Function(PokemonTypeSlot) _then;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PokemonTypeRef,
  ));
}
/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonTypeRefCopyWith<$Res> get type {
  
  return $PokemonTypeRefCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonTypeSlot].
extension PokemonTypeSlotPatterns on PokemonTypeSlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonTypeSlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonTypeSlot value)  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeSlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonTypeSlot value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  PokemonTypeRef type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  PokemonTypeRef type)  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeSlot():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  PokemonTypeRef type)?  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeSlot() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonTypeSlot implements PokemonTypeSlot {
  const _PokemonTypeSlot({required this.slot, required this.type});
  factory _PokemonTypeSlot.fromJson(Map<String, dynamic> json) => _$PokemonTypeSlotFromJson(json);

@override final  int slot;
@override final  PokemonTypeRef type;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeSlotCopyWith<_PokemonTypeSlot> get copyWith => __$PokemonTypeSlotCopyWithImpl<_PokemonTypeSlot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonTypeSlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonTypeSlot&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeSlot(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeSlotCopyWith<$Res> implements $PokemonTypeSlotCopyWith<$Res> {
  factory _$PokemonTypeSlotCopyWith(_PokemonTypeSlot value, $Res Function(_PokemonTypeSlot) _then) = __$PokemonTypeSlotCopyWithImpl;
@override @useResult
$Res call({
 int slot, PokemonTypeRef type
});


@override $PokemonTypeRefCopyWith<$Res> get type;

}
/// @nodoc
class __$PokemonTypeSlotCopyWithImpl<$Res>
    implements _$PokemonTypeSlotCopyWith<$Res> {
  __$PokemonTypeSlotCopyWithImpl(this._self, this._then);

  final _PokemonTypeSlot _self;
  final $Res Function(_PokemonTypeSlot) _then;

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_PokemonTypeSlot(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PokemonTypeRef,
  ));
}

/// Create a copy of PokemonTypeSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonTypeRefCopyWith<$Res> get type {
  
  return $PokemonTypeRefCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$PokemonTypeRef {

 String get name; String get url;
/// Create a copy of PokemonTypeRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeRefCopyWith<PokemonTypeRef> get copyWith => _$PokemonTypeRefCopyWithImpl<PokemonTypeRef>(this as PokemonTypeRef, _$identity);

  /// Serializes this PokemonTypeRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonTypeRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonTypeRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeRefCopyWith<$Res>  {
  factory $PokemonTypeRefCopyWith(PokemonTypeRef value, $Res Function(PokemonTypeRef) _then) = _$PokemonTypeRefCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonTypeRefCopyWithImpl<$Res>
    implements $PokemonTypeRefCopyWith<$Res> {
  _$PokemonTypeRefCopyWithImpl(this._self, this._then);

  final PokemonTypeRef _self;
  final $Res Function(PokemonTypeRef) _then;

/// Create a copy of PokemonTypeRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonTypeRef].
extension PokemonTypeRefPatterns on PokemonTypeRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonTypeRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonTypeRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonTypeRef value)  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonTypeRef value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonTypeRef() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeRef():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeRef() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonTypeRef implements PokemonTypeRef {
  const _PokemonTypeRef({required this.name, required this.url});
  factory _PokemonTypeRef.fromJson(Map<String, dynamic> json) => _$PokemonTypeRefFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeRefCopyWith<_PokemonTypeRef> get copyWith => __$PokemonTypeRefCopyWithImpl<_PokemonTypeRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonTypeRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonTypeRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonTypeRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeRefCopyWith<$Res> implements $PokemonTypeRefCopyWith<$Res> {
  factory _$PokemonTypeRefCopyWith(_PokemonTypeRef value, $Res Function(_PokemonTypeRef) _then) = __$PokemonTypeRefCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonTypeRefCopyWithImpl<$Res>
    implements _$PokemonTypeRefCopyWith<$Res> {
  __$PokemonTypeRefCopyWithImpl(this._self, this._then);

  final _PokemonTypeRef _self;
  final $Res Function(_PokemonTypeRef) _then;

/// Create a copy of PokemonTypeRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonTypeRef(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonStatSlot {

@JsonKey(name: 'base_stat') int get baseStat; PokemonStatRef get stat;
/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatSlotCopyWith<PokemonStatSlot> get copyWith => _$PokemonStatSlotCopyWithImpl<PokemonStatSlot>(this as PokemonStatSlot, _$identity);

  /// Serializes this PokemonStatSlot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStatSlot&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'PokemonStatSlot(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $PokemonStatSlotCopyWith<$Res>  {
  factory $PokemonStatSlotCopyWith(PokemonStatSlot value, $Res Function(PokemonStatSlot) _then) = _$PokemonStatSlotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, PokemonStatRef stat
});


$PokemonStatRefCopyWith<$Res> get stat;

}
/// @nodoc
class _$PokemonStatSlotCopyWithImpl<$Res>
    implements $PokemonStatSlotCopyWith<$Res> {
  _$PokemonStatSlotCopyWithImpl(this._self, this._then);

  final PokemonStatSlot _self;
  final $Res Function(PokemonStatSlot) _then;

/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as PokemonStatRef,
  ));
}
/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonStatRefCopyWith<$Res> get stat {
  
  return $PokemonStatRefCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonStatSlot].
extension PokemonStatSlotPatterns on PokemonStatSlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonStatSlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonStatSlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonStatSlot value)  $default,){
final _that = this;
switch (_that) {
case _PokemonStatSlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonStatSlot value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonStatSlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  PokemonStatRef stat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonStatSlot() when $default != null:
return $default(_that.baseStat,_that.stat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  PokemonStatRef stat)  $default,) {final _that = this;
switch (_that) {
case _PokemonStatSlot():
return $default(_that.baseStat,_that.stat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'base_stat')  int baseStat,  PokemonStatRef stat)?  $default,) {final _that = this;
switch (_that) {
case _PokemonStatSlot() when $default != null:
return $default(_that.baseStat,_that.stat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonStatSlot implements PokemonStatSlot {
  const _PokemonStatSlot({@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});
  factory _PokemonStatSlot.fromJson(Map<String, dynamic> json) => _$PokemonStatSlotFromJson(json);

@override@JsonKey(name: 'base_stat') final  int baseStat;
@override final  PokemonStatRef stat;

/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatSlotCopyWith<_PokemonStatSlot> get copyWith => __$PokemonStatSlotCopyWithImpl<_PokemonStatSlot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonStatSlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStatSlot&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'PokemonStatSlot(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatSlotCopyWith<$Res> implements $PokemonStatSlotCopyWith<$Res> {
  factory _$PokemonStatSlotCopyWith(_PokemonStatSlot value, $Res Function(_PokemonStatSlot) _then) = __$PokemonStatSlotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, PokemonStatRef stat
});


@override $PokemonStatRefCopyWith<$Res> get stat;

}
/// @nodoc
class __$PokemonStatSlotCopyWithImpl<$Res>
    implements _$PokemonStatSlotCopyWith<$Res> {
  __$PokemonStatSlotCopyWithImpl(this._self, this._then);

  final _PokemonStatSlot _self;
  final $Res Function(_PokemonStatSlot) _then;

/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_PokemonStatSlot(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as PokemonStatRef,
  ));
}

/// Create a copy of PokemonStatSlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonStatRefCopyWith<$Res> get stat {
  
  return $PokemonStatRefCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$PokemonStatRef {

 String get name; String get url;
/// Create a copy of PokemonStatRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatRefCopyWith<PokemonStatRef> get copyWith => _$PokemonStatRefCopyWithImpl<PokemonStatRef>(this as PokemonStatRef, _$identity);

  /// Serializes this PokemonStatRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStatRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonStatRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonStatRefCopyWith<$Res>  {
  factory $PokemonStatRefCopyWith(PokemonStatRef value, $Res Function(PokemonStatRef) _then) = _$PokemonStatRefCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonStatRefCopyWithImpl<$Res>
    implements $PokemonStatRefCopyWith<$Res> {
  _$PokemonStatRefCopyWithImpl(this._self, this._then);

  final PokemonStatRef _self;
  final $Res Function(PokemonStatRef) _then;

/// Create a copy of PokemonStatRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonStatRef].
extension PokemonStatRefPatterns on PokemonStatRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonStatRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonStatRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonStatRef value)  $default,){
final _that = this;
switch (_that) {
case _PokemonStatRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonStatRef value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonStatRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonStatRef() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _PokemonStatRef():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PokemonStatRef() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonStatRef implements PokemonStatRef {
  const _PokemonStatRef({required this.name, required this.url});
  factory _PokemonStatRef.fromJson(Map<String, dynamic> json) => _$PokemonStatRefFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonStatRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatRefCopyWith<_PokemonStatRef> get copyWith => __$PokemonStatRefCopyWithImpl<_PokemonStatRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonStatRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStatRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonStatRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatRefCopyWith<$Res> implements $PokemonStatRefCopyWith<$Res> {
  factory _$PokemonStatRefCopyWith(_PokemonStatRef value, $Res Function(_PokemonStatRef) _then) = __$PokemonStatRefCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonStatRefCopyWithImpl<$Res>
    implements _$PokemonStatRefCopyWith<$Res> {
  __$PokemonStatRefCopyWithImpl(this._self, this._then);

  final _PokemonStatRef _self;
  final $Res Function(_PokemonStatRef) _then;

/// Create a copy of PokemonStatRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonStatRef(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonAbilitySlot {

 PokemonAbilityRef get ability;@JsonKey(name: 'is_hidden') bool get isHidden; int get slot;
/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilitySlotCopyWith<PokemonAbilitySlot> get copyWith => _$PokemonAbilitySlotCopyWithImpl<PokemonAbilitySlot>(this as PokemonAbilitySlot, _$identity);

  /// Serializes this PokemonAbilitySlot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbilitySlot&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'PokemonAbilitySlot(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilitySlotCopyWith<$Res>  {
  factory $PokemonAbilitySlotCopyWith(PokemonAbilitySlot value, $Res Function(PokemonAbilitySlot) _then) = _$PokemonAbilitySlotCopyWithImpl;
@useResult
$Res call({
 PokemonAbilityRef ability,@JsonKey(name: 'is_hidden') bool isHidden, int slot
});


$PokemonAbilityRefCopyWith<$Res> get ability;

}
/// @nodoc
class _$PokemonAbilitySlotCopyWithImpl<$Res>
    implements $PokemonAbilitySlotCopyWith<$Res> {
  _$PokemonAbilitySlotCopyWithImpl(this._self, this._then);

  final PokemonAbilitySlot _self;
  final $Res Function(PokemonAbilitySlot) _then;

/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ability = null,Object? isHidden = null,Object? slot = null,}) {
  return _then(_self.copyWith(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as PokemonAbilityRef,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonAbilityRefCopyWith<$Res> get ability {
  
  return $PokemonAbilityRefCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonAbilitySlot].
extension PokemonAbilitySlotPatterns on PokemonAbilitySlot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAbilitySlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAbilitySlot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAbilitySlot value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilitySlot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAbilitySlot value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilitySlot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PokemonAbilityRef ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonAbilitySlot() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PokemonAbilityRef ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilitySlot():
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PokemonAbilityRef ability, @JsonKey(name: 'is_hidden')  bool isHidden,  int slot)?  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilitySlot() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonAbilitySlot implements PokemonAbilitySlot {
  const _PokemonAbilitySlot({required this.ability, @JsonKey(name: 'is_hidden') required this.isHidden, required this.slot});
  factory _PokemonAbilitySlot.fromJson(Map<String, dynamic> json) => _$PokemonAbilitySlotFromJson(json);

@override final  PokemonAbilityRef ability;
@override@JsonKey(name: 'is_hidden') final  bool isHidden;
@override final  int slot;

/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilitySlotCopyWith<_PokemonAbilitySlot> get copyWith => __$PokemonAbilitySlotCopyWithImpl<_PokemonAbilitySlot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonAbilitySlotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbilitySlot&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'PokemonAbilitySlot(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilitySlotCopyWith<$Res> implements $PokemonAbilitySlotCopyWith<$Res> {
  factory _$PokemonAbilitySlotCopyWith(_PokemonAbilitySlot value, $Res Function(_PokemonAbilitySlot) _then) = __$PokemonAbilitySlotCopyWithImpl;
@override @useResult
$Res call({
 PokemonAbilityRef ability,@JsonKey(name: 'is_hidden') bool isHidden, int slot
});


@override $PokemonAbilityRefCopyWith<$Res> get ability;

}
/// @nodoc
class __$PokemonAbilitySlotCopyWithImpl<$Res>
    implements _$PokemonAbilitySlotCopyWith<$Res> {
  __$PokemonAbilitySlotCopyWithImpl(this._self, this._then);

  final _PokemonAbilitySlot _self;
  final $Res Function(_PokemonAbilitySlot) _then;

/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ability = null,Object? isHidden = null,Object? slot = null,}) {
  return _then(_PokemonAbilitySlot(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as PokemonAbilityRef,isHidden: null == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PokemonAbilitySlot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonAbilityRefCopyWith<$Res> get ability {
  
  return $PokemonAbilityRefCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// @nodoc
mixin _$PokemonAbilityRef {

 String get name; String get url;
/// Create a copy of PokemonAbilityRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilityRefCopyWith<PokemonAbilityRef> get copyWith => _$PokemonAbilityRefCopyWithImpl<PokemonAbilityRef>(this as PokemonAbilityRef, _$identity);

  /// Serializes this PokemonAbilityRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbilityRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonAbilityRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilityRefCopyWith<$Res>  {
  factory $PokemonAbilityRefCopyWith(PokemonAbilityRef value, $Res Function(PokemonAbilityRef) _then) = _$PokemonAbilityRefCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonAbilityRefCopyWithImpl<$Res>
    implements $PokemonAbilityRefCopyWith<$Res> {
  _$PokemonAbilityRefCopyWithImpl(this._self, this._then);

  final PokemonAbilityRef _self;
  final $Res Function(PokemonAbilityRef) _then;

/// Create a copy of PokemonAbilityRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonAbilityRef].
extension PokemonAbilityRefPatterns on PokemonAbilityRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAbilityRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAbilityRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAbilityRef value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilityRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAbilityRef value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilityRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonAbilityRef() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilityRef():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilityRef() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonAbilityRef implements PokemonAbilityRef {
  const _PokemonAbilityRef({required this.name, required this.url});
  factory _PokemonAbilityRef.fromJson(Map<String, dynamic> json) => _$PokemonAbilityRefFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonAbilityRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilityRefCopyWith<_PokemonAbilityRef> get copyWith => __$PokemonAbilityRefCopyWithImpl<_PokemonAbilityRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonAbilityRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbilityRef&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonAbilityRef(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilityRefCopyWith<$Res> implements $PokemonAbilityRefCopyWith<$Res> {
  factory _$PokemonAbilityRefCopyWith(_PokemonAbilityRef value, $Res Function(_PokemonAbilityRef) _then) = __$PokemonAbilityRefCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonAbilityRefCopyWithImpl<$Res>
    implements _$PokemonAbilityRefCopyWith<$Res> {
  __$PokemonAbilityRefCopyWithImpl(this._self, this._then);

  final _PokemonAbilityRef _self;
  final $Res Function(_PokemonAbilityRef) _then;

/// Create a copy of PokemonAbilityRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonAbilityRef(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonSprites {

@JsonKey(name: 'front_default') String? get frontDefault;@JsonKey(name: 'other') PokemonOtherSprites? get other;
/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpritesCopyWith<PokemonSprites> get copyWith => _$PokemonSpritesCopyWithImpl<PokemonSprites>(this as PokemonSprites, _$identity);

  /// Serializes this PokemonSprites to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSprites&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,other);

@override
String toString() {
  return 'PokemonSprites(frontDefault: $frontDefault, other: $other)';
}


}

/// @nodoc
abstract mixin class $PokemonSpritesCopyWith<$Res>  {
  factory $PokemonSpritesCopyWith(PokemonSprites value, $Res Function(PokemonSprites) _then) = _$PokemonSpritesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault,@JsonKey(name: 'other') PokemonOtherSprites? other
});


$PokemonOtherSpritesCopyWith<$Res>? get other;

}
/// @nodoc
class _$PokemonSpritesCopyWithImpl<$Res>
    implements $PokemonSpritesCopyWith<$Res> {
  _$PokemonSpritesCopyWithImpl(this._self, this._then);

  final PokemonSprites _self;
  final $Res Function(PokemonSprites) _then;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? other = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonOtherSprites?,
  ));
}
/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOtherSpritesCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $PokemonOtherSpritesCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSprites].
extension PokemonSpritesPatterns on PokemonSprites {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSprites value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSprites value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSprites():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSprites value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'other')  PokemonOtherSprites? other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
return $default(_that.frontDefault,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'other')  PokemonOtherSprites? other)  $default,) {final _that = this;
switch (_that) {
case _PokemonSprites():
return $default(_that.frontDefault,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault, @JsonKey(name: 'other')  PokemonOtherSprites? other)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSprites() when $default != null:
return $default(_that.frontDefault,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSprites implements PokemonSprites {
  const _PokemonSprites({@JsonKey(name: 'front_default') this.frontDefault, @JsonKey(name: 'other') this.other});
  factory _PokemonSprites.fromJson(Map<String, dynamic> json) => _$PokemonSpritesFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;
@override@JsonKey(name: 'other') final  PokemonOtherSprites? other;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpritesCopyWith<_PokemonSprites> get copyWith => __$PokemonSpritesCopyWithImpl<_PokemonSprites>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpritesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSprites&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,other);

@override
String toString() {
  return 'PokemonSprites(frontDefault: $frontDefault, other: $other)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpritesCopyWith<$Res> implements $PokemonSpritesCopyWith<$Res> {
  factory _$PokemonSpritesCopyWith(_PokemonSprites value, $Res Function(_PokemonSprites) _then) = __$PokemonSpritesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault,@JsonKey(name: 'other') PokemonOtherSprites? other
});


@override $PokemonOtherSpritesCopyWith<$Res>? get other;

}
/// @nodoc
class __$PokemonSpritesCopyWithImpl<$Res>
    implements _$PokemonSpritesCopyWith<$Res> {
  __$PokemonSpritesCopyWithImpl(this._self, this._then);

  final _PokemonSprites _self;
  final $Res Function(_PokemonSprites) _then;

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? other = freezed,}) {
  return _then(_PokemonSprites(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonOtherSprites?,
  ));
}

/// Create a copy of PokemonSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOtherSpritesCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $PokemonOtherSpritesCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// @nodoc
mixin _$PokemonOtherSprites {

@JsonKey(name: 'official-artwork') PokemonOfficialArtwork? get officialArtwork;
/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonOtherSpritesCopyWith<PokemonOtherSprites> get copyWith => _$PokemonOtherSpritesCopyWithImpl<PokemonOtherSprites>(this as PokemonOtherSprites, _$identity);

  /// Serializes this PokemonOtherSprites to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonOtherSprites&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonOtherSprites(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class $PokemonOtherSpritesCopyWith<$Res>  {
  factory $PokemonOtherSpritesCopyWith(PokemonOtherSprites value, $Res Function(PokemonOtherSprites) _then) = _$PokemonOtherSpritesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'official-artwork') PokemonOfficialArtwork? officialArtwork
});


$PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class _$PokemonOtherSpritesCopyWithImpl<$Res>
    implements $PokemonOtherSpritesCopyWith<$Res> {
  _$PokemonOtherSpritesCopyWithImpl(this._self, this._then);

  final PokemonOtherSprites _self;
  final $Res Function(PokemonOtherSprites) _then;

/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? officialArtwork = freezed,}) {
  return _then(_self.copyWith(
officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as PokemonOfficialArtwork?,
  ));
}
/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonOtherSprites].
extension PokemonOtherSpritesPatterns on PokemonOtherSprites {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonOtherSprites value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonOtherSprites() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonOtherSprites value)  $default,){
final _that = this;
switch (_that) {
case _PokemonOtherSprites():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonOtherSprites value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonOtherSprites() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork? officialArtwork)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonOtherSprites() when $default != null:
return $default(_that.officialArtwork);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork? officialArtwork)  $default,) {final _that = this;
switch (_that) {
case _PokemonOtherSprites():
return $default(_that.officialArtwork);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'official-artwork')  PokemonOfficialArtwork? officialArtwork)?  $default,) {final _that = this;
switch (_that) {
case _PokemonOtherSprites() when $default != null:
return $default(_that.officialArtwork);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonOtherSprites implements PokemonOtherSprites {
  const _PokemonOtherSprites({@JsonKey(name: 'official-artwork') this.officialArtwork});
  factory _PokemonOtherSprites.fromJson(Map<String, dynamic> json) => _$PokemonOtherSpritesFromJson(json);

@override@JsonKey(name: 'official-artwork') final  PokemonOfficialArtwork? officialArtwork;

/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonOtherSpritesCopyWith<_PokemonOtherSprites> get copyWith => __$PokemonOtherSpritesCopyWithImpl<_PokemonOtherSprites>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonOtherSpritesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonOtherSprites&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonOtherSprites(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class _$PokemonOtherSpritesCopyWith<$Res> implements $PokemonOtherSpritesCopyWith<$Res> {
  factory _$PokemonOtherSpritesCopyWith(_PokemonOtherSprites value, $Res Function(_PokemonOtherSprites) _then) = __$PokemonOtherSpritesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'official-artwork') PokemonOfficialArtwork? officialArtwork
});


@override $PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class __$PokemonOtherSpritesCopyWithImpl<$Res>
    implements _$PokemonOtherSpritesCopyWith<$Res> {
  __$PokemonOtherSpritesCopyWithImpl(this._self, this._then);

  final _PokemonOtherSprites _self;
  final $Res Function(_PokemonOtherSprites) _then;

/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? officialArtwork = freezed,}) {
  return _then(_PokemonOtherSprites(
officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as PokemonOfficialArtwork?,
  ));
}

/// Create a copy of PokemonOtherSprites
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $PokemonOfficialArtworkCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
mixin _$PokemonOfficialArtwork {

@JsonKey(name: 'front_default') String? get frontDefault;
/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonOfficialArtworkCopyWith<PokemonOfficialArtwork> get copyWith => _$PokemonOfficialArtworkCopyWithImpl<PokemonOfficialArtwork>(this as PokemonOfficialArtwork, _$identity);

  /// Serializes this PokemonOfficialArtwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonOfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class $PokemonOfficialArtworkCopyWith<$Res>  {
  factory $PokemonOfficialArtworkCopyWith(PokemonOfficialArtwork value, $Res Function(PokemonOfficialArtwork) _then) = _$PokemonOfficialArtworkCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class _$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements $PokemonOfficialArtworkCopyWith<$Res> {
  _$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final PokemonOfficialArtwork _self;
  final $Res Function(PokemonOfficialArtwork) _then;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonOfficialArtwork].
extension PokemonOfficialArtworkPatterns on PokemonOfficialArtwork {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonOfficialArtwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonOfficialArtwork value)  $default,){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonOfficialArtwork value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)  $default,) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork():
return $default(_that.frontDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,) {final _that = this;
switch (_that) {
case _PokemonOfficialArtwork() when $default != null:
return $default(_that.frontDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonOfficialArtwork implements PokemonOfficialArtwork {
  const _PokemonOfficialArtwork({@JsonKey(name: 'front_default') this.frontDefault});
  factory _PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) => _$PokemonOfficialArtworkFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonOfficialArtworkCopyWith<_PokemonOfficialArtwork> get copyWith => __$PokemonOfficialArtworkCopyWithImpl<_PokemonOfficialArtwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonOfficialArtworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonOfficialArtwork&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'PokemonOfficialArtwork(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class _$PokemonOfficialArtworkCopyWith<$Res> implements $PokemonOfficialArtworkCopyWith<$Res> {
  factory _$PokemonOfficialArtworkCopyWith(_PokemonOfficialArtwork value, $Res Function(_PokemonOfficialArtwork) _then) = __$PokemonOfficialArtworkCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class __$PokemonOfficialArtworkCopyWithImpl<$Res>
    implements _$PokemonOfficialArtworkCopyWith<$Res> {
  __$PokemonOfficialArtworkCopyWithImpl(this._self, this._then);

  final _PokemonOfficialArtwork _self;
  final $Res Function(_PokemonOfficialArtwork) _then;

/// Create a copy of PokemonOfficialArtwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,}) {
  return _then(_PokemonOfficialArtwork(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
