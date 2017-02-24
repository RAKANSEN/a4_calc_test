import Foundation
import future
import mortgage

let arguments = CommandLine.arguments

if (arguments.count < 4) || (arguments.count > 5) {
    print("Two operating modes")
    print("USAGE for mortgage calc: calc_test [apr %] [balance] [period]")
    print("USAGE for future value: calc_test [apr %] [principal] [period] [literally anything]")
} else if (arguments.count == 4){
    let apr = NumberFormatter().number(from: arguments[1])!.doubleValue
    let balance = NumberFormatter().number(from: arguments[2])!.doubleValue
    let period = NumberFormatter().number(from: arguments[3])!.doubleValue
    
    let mort = mortgage(apr,balance,period)
    
    mort.print_mort()
} else if (arguments.count == 5) {
    let apr = NumberFormatter().number(from: arguments[1])!.doubleValue
    let principal = NumberFormatter().number(from: arguments[2])!.doubleValue
    let years = NumberFormatter().number(from: arguments[3])!.doubleValue
    
    let fv = future_value(principal, apr, years)
    fv.print_future()
}
