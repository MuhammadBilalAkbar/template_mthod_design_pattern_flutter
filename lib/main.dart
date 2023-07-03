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

void main() {
  final con1 = Concrete();
  final con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();

  /*
    This is a boring example...
    OMG I am a hook!
    So, so boring...
    I'm an overridden hook method!
  */
}
