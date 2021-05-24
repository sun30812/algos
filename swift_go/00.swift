import Foundation

class Solve1 {
    func reverseString(_ s: inout [Character]) {
        let temp = String(s.reversed())
        s = Array(temp)
    }
}

class Solve2 {
    func isPalindrome(_ s: String) -> Bool{
        let result = s.lowercased()
        var result2 = String();
        for data in result {
            if (data.isLetter || data.isNumber) {
                result2.append(data)
            }
        }
        print(result2)
        return result2 == String(result2.reversed())
        
    }
}

class Solve3 {
    func sortLetList(input: inout [String]) {
        var result = [String]()
        var temp1 = Dictionary<String, String>()
        for data in input {
            var a = data.split(separator: " ")
            var x = String(a.remove(at: 0))
            if (temp1[x] == nil) {
                temp1[x] = a.joined(separator: " ")
            } else {
                x.append("_")
                temp1[x] = a.joined(separator: " ")
            }
        }
        for item in temp1.sorted(by: {
            if ($0.value == $1.value) {
                return false
            }
            return $0.1 < $1.1
                                    
            
        }) {
            
            result.append("\(item.key.replacingOccurrences(of: "_", with: "")) \(item.value)")
        }
        input = result
    }
    func reorderLogFiles(_ logs: [String]) -> [String] {
        var letList = [String]()
        var digList = [String]()
        for data in logs {
            if data.last!.isNumber {
                digList.append(data)
            } else {
                letList.append(data)
            }
        }
        sortLetList(input: &letList)
        return letList+digList
    }
}
