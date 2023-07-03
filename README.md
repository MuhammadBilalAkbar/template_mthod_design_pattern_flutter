# template_mthod_design_pattern_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1. Research: Template Method Design Pattern Flutter

- Keywords:
    - template method design pattern
    - template method design pattern flutter
    - template method design pattern flutter example
    - behavioural design patterns in flutter
    - behavioural design patterns
    - template design pattern with example
- Video Title: Template Method Design Pattern in Flutter | Behavioural Design Patterns in Flutter |
  Template Method Design Pattern with Example

## 2. Research: Competitors

**Flutter Videos/Articles**

- 84K: https://youtu.be/7ocpwK9uesw
- 141K: https://youtu.be/aR1B8MlwbRI
- https://medium.com/flutter-community/flutter-design-patterns-3-template-method-89799d84e378
- https://scottt2.github.io/design-patterns-in-dart/template_method/

**Android/Swift/React Videos**

- 10K: https://youtu.be/p2FyGy7yGbw
- 12K: https://youtu.be/cGoVDzHvD4A
- 2.8K: https://youtu.be/84-MPg063Gc
- 10K: https://youtu.be/K5f0nUq1VPU
- 10K: https://youtu.be/bPVDEkl1z0o?list=PLmCsXDGbJHdigQ-3wrMRqJDXMTs1gMLVK
- 84K: https://youtu.be/7ocpwK9uesw
- 141K: https://youtu.be/aR1B8MlwbRI
- https://www.digitalocean.com/community/tutorials/template-method-design-pattern-in-java
- https://www.tutorialspoint.com/design_pattern/template_pattern.htm
- https://www.geeksforgeeks.org/template-method-design-pattern/
- https://refactoring.guru/design-patterns/template-method/java/example
- https://www.makeuseof.com/template-method-design-pattern/
- https://www.baeldung.com/java-template-method-pattern
- https://www.scaler.com/topics/design-patterns/template-method-design-pattern/
- https://sourcemaking.com/design_patterns/template_method
- https://refactoring.guru/design-patterns/template-method/swift/example
- https://medium.com/macoclock/template-method-pattern-8cc01879099d
- https://vinileal.com/design%20patterns/design-patterns-swift-template-method/
- http://coursegalaxy.com/design-patterns/template-method-swift.html
- https://forums.swift.org/t/template-method-pattern/14562
- https://github.com/ochococo/Design-Patterns-In-Swift
- https://dev.to/sergeyleschev/swift-design-patterns-template-method-1c2o
- https://levelup.gitconnected.com/template-pattern-in-react-design-better-components-1132d10d5baa

**Great Features**

The template method design pattern promotes code reuse, extensibility, and separation of concerns,
enabling different variations of the algorithm by simply creating new subclasses or overriding
specific methods.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/22015933/understanding-template-method-pattern
- https://stackoverflow.com/questions/67951562/classes-with-template-method-design
- https://stackoverflow.com/questions/72127796/using-template-method-design-pattern-for-differentiate-fields
- https://stackoverflow.com/questions/12045404/is-template-method-design-pattern-a-good-choice-for-this
- https://stackoverflow.com/questions/54554346/template-pattern-but-with-one-of-the-classes-not-implementing-the-method
- https://stackoverflow.com/questions/65277031/can-i-create-my-own-methods-in-a-subclass-using-the-template-method-design-patte

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video, you will learn how to allow the base class to define the overall structure of an
   algorithm while allowing subclasses to provide specific implementations for individual steps.
2. Main points:
    - Abstract classes
    - Concrete classes
    - Template method
3. The concrete subclasses implement the template methods to provide specific implementations for
   the algorithm. The template methods are responsible for calling the concrete methods in the
   correct order. This makes the code more modular and reusable.

**The Structured Main Content**

# Template Method Design Pattern Flutter

## Definition

The Template Method design pattern allows the base class to define the overall structure of an
algorithm while allowing subclasses to provide specific implementations for individual steps.

The Template Method is a behavioural design pattern.

It defines the skeleton of an algorithm in an operation, deferring some steps to subclasses.
Template Method lets subclasses redefine certain steps of an algorithm without changing the
algorithm’s structure.

## Analysis:

**AbstractClass** contains a templateMethod() operation defining the skeleton of an algorithm. The
template method calls primitive operations as well as operations defined in AbstractClass or those
of other objects.

**ConcreteClass** relies on AbstractClass to implement the invariant steps of the algorithm.

#### Template Method operation types

There are different kinds of operations which are called by the template method:

**Primitive operations** — abstract operations that must be implemented by subclasses; concrete
operations that provide a default implementation and can be redefined by subclasses if necessary.

**Hook operations** — concrete operations which provide default behaviour that subclasses can extend
if necessary. A hook operation often does nothing by default.

**Template method**  executes the algorithm in the defined order, calling the overridden methods
from the concrete subclass.

## Implementation:

In `main.dart`:

1. Define abstract class named `Abstract`.
    - `abstractMethod()` method returning a string to be implemented by subclasses.
    - `hookMethod()` method is directly returning a String `OMG I am a hook!`.
    - `templateMethod()` invokes all methods abstract and hooks methods which are to overridden from
      the class which are extending this `Abstract` class.

```dart
// Abstract class defining the template method
abstract interface class Abstract {
  // Abstract methods to be implemented by subclasses
  String abstractMethod();

  // Optional hook method that can be overridden by subclasses
  String hookMethod() => 'OMG I am a hook!';

  void templateMethod() {
    // Common steps shared by subclasses
    print(abstractMethod());
    print(hookMethod());
  }
}
```

2. Define concrete classes extending the base class which is `Abstract` class.
    - `Concrete` class is only extending `abstractMethod()` method of base class.
    - `ConcreteOverridingHook` class extend `abstractMethod()` and `hookMethod()` of base class.

```dart
// Concrete subclass implementing the template methods
class Concrete extends Abstract {
  @override
  String abstractMethod() => 'This is a boring example...';
}

class ConcreteOverridingHook extends Abstract {
  @override
  String abstractMethod() => 'So, so boring...';

  @override
  String hookMethod() => 'I\'m an overridden hook method!';
}
```

3. In `main()` method, initialize `Concrete` and `ConcreteOverridingHook` classes as `con1`
   and `con2`.

   Invoke the `templateMethod()` on both objects. First string is from `abstractMethod()` method and
   second string is from `hookMethod()`
    - `con1.templateMethod();`
        - Its `abstractMethod()` prints `This is a boring example...` and its `hookMethod()` is not
          being overridden, so it will invoke its base class `hookMethod()` method which is
          printing `OMG I am a hook!`
    - `con2.templateMethod();`
        - Its `abstractMethod()` prints `So, so boring...` and its `hookMethod()` is also being
          overridden by printing `I\'m an overridden hook method!`, so it will not invoke its
          base class `hookMethod()` method.

```dart 
  final con1 = Concrete();
  final con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();
```
