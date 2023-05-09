actor Calc {

  var cell : Int = 0;

  // Add.
  public func add(n : Int) : async Int {
    cell += n;
    return cell;
  };

  // Subtract.
  public func sub(n : Int) : async Int {
    cell -= n;
    return cell;
  };

  // Multiply.
  public func mul(n : Int) : async Int {
    cell *= n;
    return cell;
  };

  // Divide.
  public func div(n : Int) : async ?Int {
    if (n == 0) {
      // 'null' encodes the division by zero error.
      return null;
    } else {
      cell /= n;
      return ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero.
  public func reset() : async () {
    cell := 0;
  };

  public func see() : async Int {
    return cell;
  }


//   public func pot() : async Int { 
    // return pot(cell, exponente);
    // return exp;
//   }

//   public func pot(base: Int, exp: Int) : async Int {
    // if (exp == 1) {
    //    return base;     
    // }else {
    //    return pot(base, exp - 1) * base;
    // }
//   }



};

