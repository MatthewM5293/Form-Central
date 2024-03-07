// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReplyCollection on Isar {
  IsarCollection<Reply> get replys => this.collection();
}

const ReplySchema = CollectionSchema(
  name: r'Reply',
  id: 167521071224211331,
  properties: {
    r'replyLink': PropertySchema(
      id: 0,
      name: r'replyLink',
      type: IsarType.string,
    ),
    r'replyMessage': PropertySchema(
      id: 1,
      name: r'replyMessage',
      type: IsarType.string,
    )
  },
  estimateSize: _replyEstimateSize,
  serialize: _replySerialize,
  deserialize: _replyDeserialize,
  deserializeProp: _replyDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _replyGetId,
  getLinks: _replyGetLinks,
  attach: _replyAttach,
  version: '3.1.0+1',
);

int _replyEstimateSize(
  Reply object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.replyLink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.replyMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _replySerialize(
  Reply object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.replyLink);
  writer.writeString(offsets[1], object.replyMessage);
}

Reply _replyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Reply(
    replyLink: reader.readStringOrNull(offsets[0]),
    replyMessage: reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _replyDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _replyGetId(Reply object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _replyGetLinks(Reply object) {
  return [];
}

void _replyAttach(IsarCollection<dynamic> col, Id id, Reply object) {
  object.id = id;
}

extension ReplyQueryWhereSort on QueryBuilder<Reply, Reply, QWhere> {
  QueryBuilder<Reply, Reply, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReplyQueryWhere on QueryBuilder<Reply, Reply, QWhereClause> {
  QueryBuilder<Reply, Reply, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Reply, Reply, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Reply, Reply, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Reply, Reply, QAfterWhereClause> idBetween(
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

extension ReplyQueryFilter on QueryBuilder<Reply, Reply, QFilterCondition> {
  QueryBuilder<Reply, Reply, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Reply, Reply, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Reply, Reply, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'replyLink',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'replyLink',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'replyLink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'replyLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'replyLink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyLink',
        value: '',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyLinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'replyLink',
        value: '',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'replyMessage',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'replyMessage',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'replyMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'replyMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'replyMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<Reply, Reply, QAfterFilterCondition> replyMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'replyMessage',
        value: '',
      ));
    });
  }
}

extension ReplyQueryObject on QueryBuilder<Reply, Reply, QFilterCondition> {}

extension ReplyQueryLinks on QueryBuilder<Reply, Reply, QFilterCondition> {}

extension ReplyQuerySortBy on QueryBuilder<Reply, Reply, QSortBy> {
  QueryBuilder<Reply, Reply, QAfterSortBy> sortByReplyLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyLink', Sort.asc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> sortByReplyLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyLink', Sort.desc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> sortByReplyMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyMessage', Sort.asc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> sortByReplyMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyMessage', Sort.desc);
    });
  }
}

extension ReplyQuerySortThenBy on QueryBuilder<Reply, Reply, QSortThenBy> {
  QueryBuilder<Reply, Reply, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> thenByReplyLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyLink', Sort.asc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> thenByReplyLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyLink', Sort.desc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> thenByReplyMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyMessage', Sort.asc);
    });
  }

  QueryBuilder<Reply, Reply, QAfterSortBy> thenByReplyMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyMessage', Sort.desc);
    });
  }
}

extension ReplyQueryWhereDistinct on QueryBuilder<Reply, Reply, QDistinct> {
  QueryBuilder<Reply, Reply, QDistinct> distinctByReplyLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'replyLink', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Reply, Reply, QDistinct> distinctByReplyMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'replyMessage', caseSensitive: caseSensitive);
    });
  }
}

extension ReplyQueryProperty on QueryBuilder<Reply, Reply, QQueryProperty> {
  QueryBuilder<Reply, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Reply, String?, QQueryOperations> replyLinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'replyLink');
    });
  }

  QueryBuilder<Reply, String?, QQueryOperations> replyMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'replyMessage');
    });
  }
}
