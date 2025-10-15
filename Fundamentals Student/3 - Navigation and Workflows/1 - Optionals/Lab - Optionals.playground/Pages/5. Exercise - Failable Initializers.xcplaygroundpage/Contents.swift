/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    let ram: Int?
    let yearManufactured: Int?
    
    init?(ram: Int, yearManufactured: Int) {
        if (ram > 0 && yearManufactured > 1970 && yearManufactured < 2000) {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var ComputerInstance1: Computer? = Computer(ram: 16, yearManufactured: 1985)
var ComputerInstance2: Computer? = Computer(ram: 0, yearManufactured: 1985)

if let instance1 = ComputerInstance1 {
    if let ram1 = instance1.ram, let yearManufactured1 = instance1.yearManufactured {
        print("Instance 1 Ram: \(ram1) Year Manufactured: \(yearManufactured1)")
    }
} else {
    print("Instance 1 failed to initialize")
}

if let instance2 = ComputerInstance2 {
    if let ram2 = instance2.ram, let yearManufactured2 = instance2.yearManufactured {
        print("Instance 2 Ram: \(ram2) Year Manufactured: \(yearManufactured2)")
    }
} else {
    print("Instance 2 failed to initialize")
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
