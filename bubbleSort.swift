import Foundation

var unsortedStrings = [String]()
while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedStrings.append(line)
}

// Add your code below:
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}
func compare(Left:String, Right:String) -> Bool {                                                                 
    let L = Left.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})                               
    let R =  Right.lowercased().filter({("abcdefghijklmnopqrstuvwxyz").contains($0)})                            
    if L < R {                                                                                                    
        return true                                                                                              
    } else if L > R {
        
        return false                                                                                               
    }                                                                                                             
    return true                                                                                                   
}//just going to put in a variable becuase im not going to deal with the "not mutable" bs
func sort () {
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = unsortedStrings
    print("Pass: \(0), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")
    while(functionInvoke){
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if compare(Left:unsortedArray[j],Right:unsortedArray[j-1]) {
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    swap(integers:&unsortedArray, firstIndex:j, secondIndex:j-1)
                }
            }
            print("Pass: \(i+1), Swaps: \(tempCount)/\(totalCount), Array: \(unsortedArray)")

            if(tempCount == 0) {
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
}

sort()
