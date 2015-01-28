//
//  Note.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 21/01/15.
//  Copyright (c) 2015 Olivier Cappelle. All rights reserved.
//

import Foundation

struct Note {
    let description: String
    var completed: Bool
    
    init(description:String) {
        self.description = description
        self.completed = false
    }
}
/*class Note {
let description: String
var completed : Bool

init(description:String) {
self.description = description
self.completed = false
}
}*/