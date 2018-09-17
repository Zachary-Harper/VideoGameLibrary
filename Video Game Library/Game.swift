//
// game.swift
//  Video Game Library
//
//  Created by Zachary Harper on 9/10/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Game {//creating the game class that will be used for all the games in the library
    var title: String//title
    var checkedIn: Bool = true //whether or not its checked in
    var dueDate : Date?//where the due date would be if it has one
    
    init(title: String) {//initializing the title
        self.title = title 
    }
}





















