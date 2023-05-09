import Float "mo:base/Float";

actor Calculator {

    var counter : Float = 0;

    // Add.
    public func add(n : Float) : async Float {
        counter += n;
        return counter;
    };

    // Subtract.
    public func sub(n : Float) : async Float {
        counter -= n;
        return counter;
    };

    // Multiply.
    public func mul(n : Float) : async Float {
        counter *= n;
        return counter;
    };

    // Divide.
    public func div(n : Float) : async ?Float {
        if (n == 0) {
        // 'null' encodes the division by zero error.
        return null;
        } else {
        counter /= n;
        return ?counter;
        };
    };

    // Clear the calculator and reset its counter to zero.
    public func reset() : async () {
        counter := 0;
    };

    public func see() : async Float {
        return counter;
    };
    // Step 8 - Implement power 
    public func power(x : Float): async Float {
        counter **= x;
        return counter;
    };
    // Step 9 - Implement sqrt 
    public func sqrt() : async ?Float {
        counter **= 1/2;
        return ?counter;
    };
    // Step 10 - Implement floor 
    public func floor() : async Int {
      counter := Float.floor(counter);
      return Float.toInt(counter);
    };
};

