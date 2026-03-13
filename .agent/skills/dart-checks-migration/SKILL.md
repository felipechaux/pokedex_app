---
name: dart-checks-migration
description: |-
  Workflow for migrating Dart tests from `package:matcher` (`expect`) to
  `package:checks` (`check`). Use when migrating existing test files or when
  a user specifically asks for "modern checks" or similar.
license: Apache-2.0
---

# Dart Checks Migration

## When to use this skill
Use this skill when:
- Migrating existing test files from `package:matcher` to `package:checks`.
- A user specifically asks for "modern checks" or similar.

## The Workflow
1.  **Analysis**:
    - Use `grep` to identify files using `expect` or `package:matcher`.
    - Review custom matchers; these may require manual migration.
2.  **Tools & Dependencies**:
    - Ensure `dev_dependencies` includes `checks`.
    - Run `dart pub add --dev checks` if missing.
3.  **Discovery**:
    - Use the **Strategies for Discovery** below to find candidates.
4.  **Replacement**:
    - Add `import 'package:checks/checks.dart';`.
    - Apply the **Common Patterns** below.
    - **Final Step**: Replace `import 'package:test/test.dart';` with
      `import 'package:test/scaffolding.dart';` ONLY after all `expect` calls
      are replaced. This ensures incremental progress.
5.  **Verification**:
    - Ensure the code analyzes cleanly.
    - Ensure tests pass.

## Common Patterns
| Legacy `expect` | Modern `check` |
| :--- | :--- |
| `expect(a, equals(b))` | `check(a).equals(b)` |
| `expect(a, isTrue)` | `check(a).isTrue()` |
| `expect(a, isFalse)` | `check(a).isFalse()` |
| `expect(a, isNull)` | `check(a).isNull()` |
| `expect(a, isNotNull)` | `check(a).isNotNull()` |
| `expect(() => fn(), throwsA<T>())` | `check(() => fn()).throws<T>()` |
| `expect(list, hasLength(n))` | `check(list).length.equals(n)` |
| `expect(a, closeTo(b, delta))` | `check(a).isA<num>().isCloseTo(b, delta)` |
| `expect(a, greaterThan(b))` | `check(a).isGreaterThan(b)` |
| `expect(a, lessThan(b))` | `check(a).isLessThan(b)` |
| `expect(list, isEmpty)` | `check(list).isEmpty()` |
| `expect(list, isNotEmpty)` | `check(list).isNotEmpty()` |
| `expect(list, contains(item))` | `check(list).contains(item)` |
| `expect(map, equals(otherMap))` | `check(map).deepEquals(otherMap)` |
| `expect(list, equals(otherList))` | `check(list).deepEquals(otherList)` |
| `expect(future, completes)` | `await check(future).completes()` |
| `expect(stream, emitsInOrder(...))` | `await check(stream).withQueue.inOrder(...)` |

## Async & Futures (CRITICAL)

Always `await` checks on futures:

```dart
// GOOD
await check(myFuture).completes((it) => it.equals(42));

// BAD - test may pass vacuously
check(myFuture).completes((it) => it.equals(42));
```

## Related Skills
- **[`dart-matcher-best-practices`](../dart-matcher-best-practices/SKILL.md)**:
  Use if staying with `package:matcher`.
- **[`dart-test-fundamentals`](../dart-test-fundamentals/SKILL.md)**:
  Core test structure concepts.
