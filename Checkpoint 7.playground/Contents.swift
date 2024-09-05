import UIKit

class Animal {
    let legs: Int  // typically attached to feet
    init (legs : Int) { self.legs = max(legs, 0)  } // cannot be negative
}

class Dog: Animal {
    init() { super.init( legs: 4 ) }       // dogs are quadrupeds.
    public func speak() { print("BARK!") }  // standard implementation
}

class Cat: Animal {
    let isTame: Bool
    init ( isTame isTameFromInit: Bool) {
        isTame = isTameFromInit
        super.init(legs: 4) // cats are quadrupeds.
    }
    public func speak() { print("meoooow") }
}

class Corgi:  Dog { override func speak() { print ("YIP YIP YIP!")     }}
class Poodle: Dog { override func speak() { print ("WOOF!")            }}

class Persian: Cat {
    init() { super.init(isTame: true)}
    override func speak() { print("Yowwwww Yowwwwww") }}
class Lion:    Cat {
    init() { super.init(isTame: false)}
    override func speak() { print("Roooooooar")       }}

// ====================================
// Test cases to try in Playground
let kevin = Corgi()    // create an instance of the Corgi class
let puddle   = Poodle()
let meowscles = Persian()
let mufasa = Lion()

print ("Kevin is a dog with \(kevin.legs) legs. Kevin says ")
kevin.speak() ; print("\n")
print ("Puddle is a dog with \(puddle.legs) legs. Puddle says ")
puddle.speak() ; print("\n")
print ("Meowscles is a " + (meowscles.isTame ? "tame " : "wild ") + "cat with \(meowscles.legs) legs. Meowscles says ")
meowscles.speak() ; print ("\n")
print ("Mufasa is a " + (mufasa.isTame ? "tame " : "wild ") + "cat with \(mufasa.legs) legs. Mufasa says")
mufasa.speak() ; print("\n")
