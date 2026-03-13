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

// dart format on
