// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonFilterState {

 List<String> get selectedTypes; String get searchQuery;
/// Create a copy of PokemonFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonFilterStateCopyWith<PokemonFilterState> get copyWith => _$PokemonFilterStateCopyWithImpl<PokemonFilterState>(this as PokemonFilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonFilterState&&const DeepCollectionEquality().equals(other.selectedTypes, selectedTypes)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedTypes),searchQuery);

@override
String toString() {
  return 'PokemonFilterState(selectedTypes: $selectedTypes, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $PokemonFilterStateCopyWith<$Res>  {
  factory $PokemonFilterStateCopyWith(PokemonFilterState value, $Res Function(PokemonFilterState) _then) = _$PokemonFilterStateCopyWithImpl;
@useResult
$Res call({
 List<String> selectedTypes, String searchQuery
});




}
/// @nodoc
class _$PokemonFilterStateCopyWithImpl<$Res>
    implements $PokemonFilterStateCopyWith<$Res> {
  _$PokemonFilterStateCopyWithImpl(this._self, this._then);

  final PokemonFilterState _self;
  final $Res Function(PokemonFilterState) _then;

/// Create a copy of PokemonFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTypes = null,Object? searchQuery = null,}) {
  return _then(_self.copyWith(
selectedTypes: null == selectedTypes ? _self.selectedTypes : selectedTypes // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonFilterState].
extension PokemonFilterStatePatterns on PokemonFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonFilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonFilterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonFilterState value)  $default,){
final _that = this;
switch (_that) {
case _PokemonFilterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonFilterState value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonFilterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> selectedTypes,  String searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonFilterState() when $default != null:
return $default(_that.selectedTypes,_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> selectedTypes,  String searchQuery)  $default,) {final _that = this;
switch (_that) {
case _PokemonFilterState():
return $default(_that.selectedTypes,_that.searchQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> selectedTypes,  String searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _PokemonFilterState() when $default != null:
return $default(_that.selectedTypes,_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonFilterState extends PokemonFilterState {
  const _PokemonFilterState({final  List<String> selectedTypes = const [], this.searchQuery = ''}): _selectedTypes = selectedTypes,super._();
  

 final  List<String> _selectedTypes;
@override@JsonKey() List<String> get selectedTypes {
  if (_selectedTypes is EqualUnmodifiableListView) return _selectedTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedTypes);
}

@override@JsonKey() final  String searchQuery;

/// Create a copy of PokemonFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonFilterStateCopyWith<_PokemonFilterState> get copyWith => __$PokemonFilterStateCopyWithImpl<_PokemonFilterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonFilterState&&const DeepCollectionEquality().equals(other._selectedTypes, _selectedTypes)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedTypes),searchQuery);

@override
String toString() {
  return 'PokemonFilterState(selectedTypes: $selectedTypes, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$PokemonFilterStateCopyWith<$Res> implements $PokemonFilterStateCopyWith<$Res> {
  factory _$PokemonFilterStateCopyWith(_PokemonFilterState value, $Res Function(_PokemonFilterState) _then) = __$PokemonFilterStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> selectedTypes, String searchQuery
});




}
/// @nodoc
class __$PokemonFilterStateCopyWithImpl<$Res>
    implements _$PokemonFilterStateCopyWith<$Res> {
  __$PokemonFilterStateCopyWithImpl(this._self, this._then);

  final _PokemonFilterState _self;
  final $Res Function(_PokemonFilterState) _then;

/// Create a copy of PokemonFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTypes = null,Object? searchQuery = null,}) {
  return _then(_PokemonFilterState(
selectedTypes: null == selectedTypes ? _self._selectedTypes : selectedTypes // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
