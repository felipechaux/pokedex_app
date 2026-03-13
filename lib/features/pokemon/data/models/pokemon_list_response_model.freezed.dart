// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonListResponseModel {

 int get count; String? get next; String? get previous; List<PokemonResult> get results;
/// Create a copy of PokemonListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListResponseModelCopyWith<PokemonListResponseModel> get copyWith => _$PokemonListResponseModelCopyWithImpl<PokemonListResponseModel>(this as PokemonListResponseModel, _$identity);

  /// Serializes this PokemonListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListResponseModel&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PokemonListResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $PokemonListResponseModelCopyWith<$Res>  {
  factory $PokemonListResponseModelCopyWith(PokemonListResponseModel value, $Res Function(PokemonListResponseModel) _then) = _$PokemonListResponseModelCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<PokemonResult> results
});




}
/// @nodoc
class _$PokemonListResponseModelCopyWithImpl<$Res>
    implements $PokemonListResponseModelCopyWith<$Res> {
  _$PokemonListResponseModelCopyWithImpl(this._self, this._then);

  final PokemonListResponseModel _self;
  final $Res Function(PokemonListResponseModel) _then;

/// Create a copy of PokemonListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PokemonResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListResponseModel].
extension PokemonListResponseModelPatterns on PokemonListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<PokemonResult> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListResponseModel() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String? next,  String? previous,  List<PokemonResult> results)  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponseModel():
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String? next,  String? previous,  List<PokemonResult> results)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponseModel() when $default != null:
return $default(_that.count,_that.next,_that.previous,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonListResponseModel implements PokemonListResponseModel {
  const _PokemonListResponseModel({required this.count, this.next, this.previous, required final  List<PokemonResult> results}): _results = results;
  factory _PokemonListResponseModel.fromJson(Map<String, dynamic> json) => _$PokemonListResponseModelFromJson(json);

@override final  int count;
@override final  String? next;
@override final  String? previous;
 final  List<PokemonResult> _results;
@override List<PokemonResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PokemonListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListResponseModelCopyWith<_PokemonListResponseModel> get copyWith => __$PokemonListResponseModelCopyWithImpl<_PokemonListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListResponseModel&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PokemonListResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PokemonListResponseModelCopyWith<$Res> implements $PokemonListResponseModelCopyWith<$Res> {
  factory _$PokemonListResponseModelCopyWith(_PokemonListResponseModel value, $Res Function(_PokemonListResponseModel) _then) = __$PokemonListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int count, String? next, String? previous, List<PokemonResult> results
});




}
/// @nodoc
class __$PokemonListResponseModelCopyWithImpl<$Res>
    implements _$PokemonListResponseModelCopyWith<$Res> {
  __$PokemonListResponseModelCopyWithImpl(this._self, this._then);

  final _PokemonListResponseModel _self;
  final $Res Function(_PokemonListResponseModel) _then;

/// Create a copy of PokemonListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(_PokemonListResponseModel(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PokemonResult>,
  ));
}


}


/// @nodoc
mixin _$PokemonResult {

 String get name; String get url;
/// Create a copy of PokemonResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonResultCopyWith<PokemonResult> get copyWith => _$PokemonResultCopyWithImpl<PokemonResult>(this as PokemonResult, _$identity);

  /// Serializes this PokemonResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonResult&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonResult(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonResultCopyWith<$Res>  {
  factory $PokemonResultCopyWith(PokemonResult value, $Res Function(PokemonResult) _then) = _$PokemonResultCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonResultCopyWithImpl<$Res>
    implements $PokemonResultCopyWith<$Res> {
  _$PokemonResultCopyWithImpl(this._self, this._then);

  final PokemonResult _self;
  final $Res Function(PokemonResult) _then;

/// Create a copy of PokemonResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonResult].
extension PokemonResultPatterns on PokemonResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonResult value)  $default,){
final _that = this;
switch (_that) {
case _PokemonResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonResult value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonResult() when $default != null:
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
case _PokemonResult() when $default != null:
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
case _PokemonResult():
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
case _PokemonResult() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonResult implements PokemonResult {
  const _PokemonResult({required this.name, required this.url});
  factory _PokemonResult.fromJson(Map<String, dynamic> json) => _$PokemonResultFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonResultCopyWith<_PokemonResult> get copyWith => __$PokemonResultCopyWithImpl<_PokemonResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonResult&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonResult(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonResultCopyWith<$Res> implements $PokemonResultCopyWith<$Res> {
  factory _$PokemonResultCopyWith(_PokemonResult value, $Res Function(_PokemonResult) _then) = __$PokemonResultCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonResultCopyWithImpl<$Res>
    implements _$PokemonResultCopyWith<$Res> {
  __$PokemonResultCopyWithImpl(this._self, this._then);

  final _PokemonResult _self;
  final $Res Function(_PokemonResult) _then;

/// Create a copy of PokemonResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonResult(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
