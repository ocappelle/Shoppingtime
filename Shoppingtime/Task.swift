//
//  Task.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 21/01/15.
//  Copyright (c) 2015 Olivier Cappelle. All rights reserved.
//

import Foundation

struct Task {
    let title: String
    var dateAndTime: NSDate?
    var note: String
    
    init(title:String,dateAndTime:NSDate,note:String) {
        self.title = title
        self.dateAndTime = dateAndTime
        self.note = note
    }
    
    init(title:String,note:String) {
        self.title = title
        self.dateAndTime = nil
        self.note = note
    }
}

/*func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers*/