//
//  01.swift
//  swift_go
//
//  Created by 이정민 on 2021/05/23.
//

import Foundation

// too slow...
class Solve4 {
    func que() {
        var list = ArraySlice<Int>()
        var number: Int
        var input: String
        
        number = Int(readLine()!)!
        while number > 0 {
            
            number -= 1
            input = readLine()!
            switch input {
            case "pop":
                print(list.popFirst() ?? -1)
            case "size":
                print(list.count)
            case "empty":
                if list.isEmpty {
                    print(1)
                } else {
                    print(0)
                }
            case "front":
                if list.isEmpty {
                    print(-1)
                } else {
                    print(list.first!)
                }
            case "back":
                if list.isEmpty {
                    print(-1)
                } else {
                    print(list.last!)
                }
            default:
                let a = input.index(input.startIndex, offsetBy: 5)
                list.append(Int(input[a...])!)
            }
        }
    }
}

class Solve5 {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let temp = paragraph.lowercased().replacingOccurrences(of: ",", with: " ")
        var data = String()
        var dict = Dictionary<String, Int>()
        for item in temp {
                data.append(String(item).trimmingCharacters(in: .punctuationCharacters))
        }
        for item in data.split(separator: " ").map({
            String($0)
        }) {
            if dict[item] == nil {
                dict[item] = 1
            } else {
                dict[item]! += 1
            }
        }
        for item1 in dict {
            for item2 in banned {
                if item1.key == item2 {
                    dict.removeValue(forKey: item1.key)
                }
            }
        }
        return dict.sorted(by: {
            return $0.value > $1.value
        })[0].key
        }
}
