//
//  02.swift
//  swift_go
//
//  Created by 이정민 on 2021/05/26.
//

import Foundation
class Solve7 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        for count in 0..<nums.count  {
            for count2 in 0..<nums.count {
                if count != count2 && nums[count] + nums[count2] == target {
                    if (result.count < 2) {
                        result.append(count)
                        result.append(count2)
                    } else {
                        break
                    }
                }
            }
        }
            return result
        }
}

class Solve8 { // failed to make a result
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var results = Dictionary<Int, [String]>()
        var lastIndex: Int = 0
        let inputs = strs.map({
            String($0.sorted())
        }).sorted()
        for index in 0..<strs.count {
            print(inputs[index])
            if results[lastIndex] == nil {
                results[lastIndex] = [String]()
                results[lastIndex]?.append(inputs[index])
                continue
            }
            if String(inputs[index].sorted()) == String(results[lastIndex]![0].sorted()) {
                results[lastIndex]?.append(inputs[index])
            } else {
                lastIndex += 1
                results[lastIndex] = [String]()
                results[lastIndex]?.append(inputs[index])
            }
        }
        return Array(results.values)
        }
}
