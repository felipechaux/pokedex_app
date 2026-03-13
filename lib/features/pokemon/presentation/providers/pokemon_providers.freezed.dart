// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonListPageState {

 List<PokemonListItemState> get items; int get offset; bool get isLoadingMore;
/// Create a copy of PokemonListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListPageStateCopyWith<PokemonListPageState> get copyWith => _$PokemonListPageStateCopyWithImpl<PokemonListPageState>(this as PokemonListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListPageState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),offset,isLoadingMore);

@override
String toString() {
  return 'PokemonListPageState(items: $items, offset: $offset, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $PokemonListPageStateCopyWith<$Res>  {
  factory $PokemonListPageStateCopyWith(PokemonListPageState value, $Res Function(PokemonListPageState) _then) = _$PokemonListPageStateCopyWithImpl;
@useResult
$Res call({
 List<PokemonListItemState> items, int offset, bool isLoadingMore
});




}
/// @nodoc
class _$PokemonListPageStateCopyWithImpl<$Res>
    implements $PokemonListPageStateCopyWith<$Res> {
  _$PokemonListPageStateCopyWithImpl(this._self, this._then);

  final PokemonListPageState _self;
  final $Res Function(PokemonListPageState) _then;

/// Create a copy of PokemonListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? offset = null,Object? isLoadingMore = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PokemonListItemState>,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListPageState].
extension PokemonListPageStatePatterns on PokemonListPageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListPageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListPageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListPageState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListPageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListPageState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListPageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PokemonListItemState> items,  int offset,  bool isLoadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListPageState() when $default != null:
return $default(_that.items,_that.offset,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PokemonListItemState> items,  int offset,  bool isLoadingMore)  $default,) {final _that = this;
switch (_that) {
case _PokemonListPageState():
return $default(_that.items,_that.offset,_that.isLoadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PokemonListItemState> items,  int offset,  bool isLoadingMore)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListPageState() when $default != null:
return $default(_that.items,_that.offset,_that.isLoadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonListPageState implements PokemonListPageState {
  const _PokemonListPageState({required final  List<PokemonListItemState> items, required this.offset, required this.isLoadingMore}): _items = items;
  

 final  List<PokemonListItemState> _items;
@override List<PokemonListItemState> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int offset;
@override final  bool isLoadingMore;

/// Create a copy of PokemonListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListPageStateCopyWith<_PokemonListPageState> get copyWith => __$PokemonListPageStateCopyWithImpl<_PokemonListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListPageState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),offset,isLoadingMore);

@override
String toString() {
  return 'PokemonListPageState(items: $items, offset: $offset, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$PokemonListPageStateCopyWith<$Res> implements $PokemonListPageStateCopyWith<$Res> {
  factory _$PokemonListPageStateCopyWith(_PokemonListPageState value, $Res Function(_PokemonListPageState) _then) = __$PokemonListPageStateCopyWithImpl;
@override @useResult
$Res call({
 List<PokemonListItemState> items, int offset, bool isLoadingMore
});




}
/// @nodoc
class __$PokemonListPageStateCopyWithImpl<$Res>
    implements _$PokemonListPageStateCopyWith<$Res> {
  __$PokemonListPageStateCopyWithImpl(this._self, this._then);

  final _PokemonListPageState _self;
  final $Res Function(_PokemonListPageState) _then;

/// Create a copy of PokemonListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? offset = null,Object? isLoadingMore = null,}) {
  return _then(_PokemonListPageState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PokemonListItemState>,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PokemonListItemState {

 int get id; String get name; String get imageUrl; List<String> get types;
/// Create a copy of PokemonListItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListItemStateCopyWith<PokemonListItemState> get copyWith => _$PokemonListItemStateCopyWithImpl<PokemonListItemState>(this as PokemonListItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListItemState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.types, types));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PokemonListItemState(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonListItemStateCopyWith<$Res>  {
  factory $PokemonListItemStateCopyWith(PokemonListItemState value, $Res Function(PokemonListItemState) _then) = _$PokemonListItemStateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String imageUrl, List<String> types
});




}
/// @nodoc
class _$PokemonListItemStateCopyWithImpl<$Res>
    implements $PokemonListItemStateCopyWith<$Res> {
  _$PokemonListItemStateCopyWithImpl(this._self, this._then);

  final PokemonListItemState _self;
  final $Res Function(PokemonListItemState) _then;

/// Create a copy of PokemonListItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListItemState].
extension PokemonListItemStatePatterns on PokemonListItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListItemState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListItemState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListItemState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListItemState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListItemState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListItemState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListItemState() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _PokemonListItemState():
return $default(_that.id,_that.name,_that.imageUrl,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String imageUrl,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListItemState() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.types);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonListItemState implements PokemonListItemState {
  const _PokemonListItemState({required this.id, required this.name, required this.imageUrl, required final  List<String> types}): _types = types;
  

@override final  int id;
@override final  String name;
@override final  String imageUrl;
 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of PokemonListItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListItemStateCopyWith<_PokemonListItemState> get copyWith => __$PokemonListItemStateCopyWithImpl<_PokemonListItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListItemState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._types, _types));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PokemonListItemState(id: $id, name: $name, imageUrl: $imageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonListItemStateCopyWith<$Res> implements $PokemonListItemStateCopyWith<$Res> {
  factory _$PokemonListItemStateCopyWith(_PokemonListItemState value, $Res Function(_PokemonListItemState) _then) = __$PokemonListItemStateCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String imageUrl, List<String> types
});




}
/// @nodoc
class __$PokemonListItemStateCopyWithImpl<$Res>
    implements _$PokemonListItemStateCopyWith<$Res> {
  __$PokemonListItemStateCopyWithImpl(this._self, this._then);

  final _PokemonListItemState _self;
  final $Res Function(_PokemonListItemState) _then;

/// Create a copy of PokemonListItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,}) {
  return _then(_PokemonListItemState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$PokemonDetailState {

 int get id; String get name; String get imageUrl; List<String> get types; int get height; int get weight; List<StatState> get stats; List<String> get abilities; String get flavorText; String get category; int get genderRate;
/// Create a copy of PokemonDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailStateCopyWith<PokemonDetailState> get copyWith => _$PokemonDetailStateCopyWithImpl<PokemonDetailState>(this as PokemonDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.category, category) || other.category == category)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(types),height,weight,const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(abilities),flavorText,category,genderRate);

@override
String toString() {
  return 'PokemonDetailState(id: $id, name: $name, imageUrl: $imageUrl, types: $types, height: $height, weight: $weight, stats: $stats, abilities: $abilities, flavorText: $flavorText, category: $category, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailStateCopyWith<$Res>  {
  factory $PokemonDetailStateCopyWith(PokemonDetailState value, $Res Function(PokemonDetailState) _then) = _$PokemonDetailStateCopyWithImpl;
@useResult
$Res call({
 int id, String name, String imageUrl, List<String> types, int height, int weight, List<StatState> stats, List<String> abilities, String flavorText, String category, int genderRate
});




}
/// @nodoc
class _$PokemonDetailStateCopyWithImpl<$Res>
    implements $PokemonDetailStateCopyWith<$Res> {
  _$PokemonDetailStateCopyWithImpl(this._self, this._then);

  final PokemonDetailState _self;
  final $Res Function(PokemonDetailState) _then;

/// Create a copy of PokemonDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,Object? height = null,Object? weight = null,Object? stats = null,Object? abilities = null,Object? flavorText = null,Object? category = null,Object? genderRate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatState>,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDetailState].
extension PokemonDetailStatePatterns on PokemonDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  List<String> types,  int height,  int weight,  List<StatState> stats,  List<String> abilities,  String flavorText,  String category,  int genderRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailState() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.types,_that.height,_that.weight,_that.stats,_that.abilities,_that.flavorText,_that.category,_that.genderRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String imageUrl,  List<String> types,  int height,  int weight,  List<StatState> stats,  List<String> abilities,  String flavorText,  String category,  int genderRate)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailState():
return $default(_that.id,_that.name,_that.imageUrl,_that.types,_that.height,_that.weight,_that.stats,_that.abilities,_that.flavorText,_that.category,_that.genderRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String imageUrl,  List<String> types,  int height,  int weight,  List<StatState> stats,  List<String> abilities,  String flavorText,  String category,  int genderRate)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailState() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.types,_that.height,_that.weight,_that.stats,_that.abilities,_that.flavorText,_that.category,_that.genderRate);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonDetailState implements PokemonDetailState {
  const _PokemonDetailState({required this.id, required this.name, required this.imageUrl, required final  List<String> types, required this.height, required this.weight, required final  List<StatState> stats, required final  List<String> abilities, required this.flavorText, required this.category, required this.genderRate}): _types = types,_stats = stats,_abilities = abilities;
  

@override final  int id;
@override final  String name;
@override final  String imageUrl;
 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

@override final  int height;
@override final  int weight;
 final  List<StatState> _stats;
@override List<StatState> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<String> _abilities;
@override List<String> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  String flavorText;
@override final  String category;
@override final  int genderRate;

/// Create a copy of PokemonDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailStateCopyWith<_PokemonDetailState> get copyWith => __$PokemonDetailStateCopyWithImpl<_PokemonDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText)&&(identical(other.category, category) || other.category == category)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,const DeepCollectionEquality().hash(_types),height,weight,const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_abilities),flavorText,category,genderRate);

@override
String toString() {
  return 'PokemonDetailState(id: $id, name: $name, imageUrl: $imageUrl, types: $types, height: $height, weight: $weight, stats: $stats, abilities: $abilities, flavorText: $flavorText, category: $category, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailStateCopyWith<$Res> implements $PokemonDetailStateCopyWith<$Res> {
  factory _$PokemonDetailStateCopyWith(_PokemonDetailState value, $Res Function(_PokemonDetailState) _then) = __$PokemonDetailStateCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String imageUrl, List<String> types, int height, int weight, List<StatState> stats, List<String> abilities, String flavorText, String category, int genderRate
});




}
/// @nodoc
class __$PokemonDetailStateCopyWithImpl<$Res>
    implements _$PokemonDetailStateCopyWith<$Res> {
  __$PokemonDetailStateCopyWithImpl(this._self, this._then);

  final _PokemonDetailState _self;
  final $Res Function(_PokemonDetailState) _then;

/// Create a copy of PokemonDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? types = null,Object? height = null,Object? weight = null,Object? stats = null,Object? abilities = null,Object? flavorText = null,Object? category = null,Object? genderRate = null,}) {
  return _then(_PokemonDetailState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatState>,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<String>,flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$StatState {

 String get name; int get baseStat;
/// Create a copy of StatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatStateCopyWith<StatState> get copyWith => _$StatStateCopyWithImpl<StatState>(this as StatState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatState&&(identical(other.name, name) || other.name == name)&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat));
}


@override
int get hashCode => Object.hash(runtimeType,name,baseStat);

@override
String toString() {
  return 'StatState(name: $name, baseStat: $baseStat)';
}


}

/// @nodoc
abstract mixin class $StatStateCopyWith<$Res>  {
  factory $StatStateCopyWith(StatState value, $Res Function(StatState) _then) = _$StatStateCopyWithImpl;
@useResult
$Res call({
 String name, int baseStat
});




}
/// @nodoc
class _$StatStateCopyWithImpl<$Res>
    implements $StatStateCopyWith<$Res> {
  _$StatStateCopyWithImpl(this._self, this._then);

  final StatState _self;
  final $Res Function(StatState) _then;

/// Create a copy of StatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? baseStat = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatState].
extension StatStatePatterns on StatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatState value)  $default,){
final _that = this;
switch (_that) {
case _StatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatState value)?  $default,){
final _that = this;
switch (_that) {
case _StatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int baseStat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatState() when $default != null:
return $default(_that.name,_that.baseStat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int baseStat)  $default,) {final _that = this;
switch (_that) {
case _StatState():
return $default(_that.name,_that.baseStat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int baseStat)?  $default,) {final _that = this;
switch (_that) {
case _StatState() when $default != null:
return $default(_that.name,_that.baseStat);case _:
  return null;

}
}

}

/// @nodoc


class _StatState implements StatState {
  const _StatState({required this.name, required this.baseStat});
  

@override final  String name;
@override final  int baseStat;

/// Create a copy of StatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatStateCopyWith<_StatState> get copyWith => __$StatStateCopyWithImpl<_StatState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatState&&(identical(other.name, name) || other.name == name)&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat));
}


@override
int get hashCode => Object.hash(runtimeType,name,baseStat);

@override
String toString() {
  return 'StatState(name: $name, baseStat: $baseStat)';
}


}

/// @nodoc
abstract mixin class _$StatStateCopyWith<$Res> implements $StatStateCopyWith<$Res> {
  factory _$StatStateCopyWith(_StatState value, $Res Function(_StatState) _then) = __$StatStateCopyWithImpl;
@override @useResult
$Res call({
 String name, int baseStat
});




}
/// @nodoc
class __$StatStateCopyWithImpl<$Res>
    implements _$StatStateCopyWith<$Res> {
  __$StatStateCopyWithImpl(this._self, this._then);

  final _StatState _self;
  final $Res Function(_StatState) _then;

/// Create a copy of StatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? baseStat = null,}) {
  return _then(_StatState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
