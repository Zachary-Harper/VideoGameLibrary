//
// game.swift
//  Video Game Library
//
//  Created by Zachary Harper on 9/10/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Game {
    var title: String
    let inOut: Bool
    let dueDate: Date?
    
    init(title:String, inOut: Bool, dueDate: Date) {
        self.title = title
        self.inOut = inOut
        self.dueDate = dueDate
    }
    
    func checkOut() {
        if inOut {
            print("You've checked out \(title) and its due date is \(dueDate)")
        }else {
            print("You've not checked out a game")
        }
    }
}





















