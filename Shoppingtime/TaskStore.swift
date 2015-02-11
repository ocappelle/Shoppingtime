//
//  TaskStore.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 21/01/15.
//  Copyright (c) 2015 Olivier Cappelle. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance
    }
    
    init() {
        add(Task(title: "Groenplaats supermarkt", note: "Groenten kopen"))
        add(Task(title: "Mediamarkt", note: "PS4 kopen"))
    }
    
    var tasks: [Task] = []
    
    var count: Int {
        //get {
            return tasks.count
        //}
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    func remove(index: Int) {
        tasks.removeAtIndex(index)
    }
}