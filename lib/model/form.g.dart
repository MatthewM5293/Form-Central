// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFormModelCollection on Isar {
  IsarCollection<FormModel> get formModels => this.collection();
}

const FormModelSchema = CollectionSchema(
  name: r'FormModel',
  id: 1296869150401112366,
  properties: {
    r'formBody': PropertySchema(
      id: 0,
      name: r'formBody',
      type: IsarType.string,
    ),
    r'formImageURL': PropertySchema(
      id: 1,
      name: r'formImageURL',
      type: IsarType.string,
    ),
    r'formLink': PropertySchema(
      id: 2,
      name: r'formLink',
      type: IsarType.string,
    ),
    r'formTitle': PropertySchema(
      id: 3,
      name: r'formTitle',
      type: IsarType.string,
    )
  },
  estimateSize: _formModelEstimateSize,
  serialize: _formModelSerialize,
  deserialize: _formModelDeserialize,
  deserializeProp: _formModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _formModelGetId,
  getLinks: _formModelGetLinks,
  attach: _formModelAttach,
  version: '3.1.0+1',
);

int _formModelEstimateSize(
  FormModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.formBody;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.formImageURL;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.formLink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.formTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _formModelSerialize(
  FormModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.formBody);
  writer.writeString(offsets[1], object.formImageURL);
  writer.writeString(offsets[2], object.formLink);
  writer.writeString(offsets[3], object.formTitle);
}

FormModel _formModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FormModel(
    formBody: reader.readStringOrNull(offsets[0]),
    formImageURL: reader.readStringOrNull(offsets[1]),
    formLink: reader.readStringOrNull(offsets[2]),
    formTitle: reader.readStringOrNull(offsets[3]),
  );
  object.id = id;
  return object;
}

P _formModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _formModelGetId(FormModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _formModelGetLinks(FormModel object) {
  return [];
}

void _formModelAttach(IsarCollection<dynamic> col, Id id, FormModel object) {
  object.id = id;
}

extension FormModelQueryWhereSort
    on QueryBuilder<FormModel, FormModel, QWhere> {
  QueryBuilder<FormModel, FormModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FormModelQueryWhere
    on QueryBuilder<FormModel, FormModel, QWhereClause> {
  QueryBuilder<FormModel, FormModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FormModelQueryFilter
    on QueryBuilder<FormModel, FormModel, QFilterCondition> {
  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formBody',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formBodyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formBody',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formBody',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formBody',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formBody',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formBodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formBody',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formBodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formBody',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formImageURL',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formImageURL',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formImageURLEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formImageURLBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formImageURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formImageURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formImageURLMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formImageURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formImageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formImageURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formImageURL',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formLink',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formLinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formLink',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formLink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formLink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formLinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formLink',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formLinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formLink',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formTitle',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formTitle',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> formTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition>
      formTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FormModelQueryObject
    on QueryBuilder<FormModel, FormModel, QFilterCondition> {}

extension FormModelQueryLinks
    on QueryBuilder<FormModel, FormModel, QFilterCondition> {}

extension FormModelQuerySortBy on QueryBuilder<FormModel, FormModel, QSortBy> {
  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formBody', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formBody', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormImageURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formImageURL', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormImageURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formImageURL', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formLink', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formLink', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formTitle', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> sortByFormTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formTitle', Sort.desc);
    });
  }
}

extension FormModelQuerySortThenBy
    on QueryBuilder<FormModel, FormModel, QSortThenBy> {
  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formBody', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formBody', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormImageURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formImageURL', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormImageURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formImageURL', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formLink', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formLink', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formTitle', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByFormTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formTitle', Sort.desc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FormModel, FormModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FormModelQueryWhereDistinct
    on QueryBuilder<FormModel, FormModel, QDistinct> {
  QueryBuilder<FormModel, FormModel, QDistinct> distinctByFormBody(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formBody', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormModel, FormModel, QDistinct> distinctByFormImageURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formImageURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormModel, FormModel, QDistinct> distinctByFormLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formLink', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FormModel, FormModel, QDistinct> distinctByFormTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formTitle', caseSensitive: caseSensitive);
    });
  }
}

extension FormModelQueryProperty
    on QueryBuilder<FormModel, FormModel, QQueryProperty> {
  QueryBuilder<FormModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FormModel, String?, QQueryOperations> formBodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formBody');
    });
  }

  QueryBuilder<FormModel, String?, QQueryOperations> formImageURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formImageURL');
    });
  }

  QueryBuilder<FormModel, String?, QQueryOperations> formLinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formLink');
    });
  }

  QueryBuilder<FormModel, String?, QQueryOperations> formTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formTitle');
    });
  }
}
