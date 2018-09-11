//
//  Menu.swift
//  Video Game Library
//
//  Created by Zachary Harper on 9/11/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Menu {
    
    var shouldQuit = false//when true we should quit running the video game library
    
    func go() {//handle making the menu run
        printMenu()
        while !shouldQuit {
            printMenu()
            quit()
            print(getInput())
        }
        
        
        
    }
    
    func printMenu() {
        print("""

VIDEO GAME LIBRARY MENU

1. Add Game
2. Remove Game
3. List Available Games
4. Check Out Games
5. Check In Games
6. List Checked Out Games
7. Quit

""")
    }
    
    func quit() {
        shouldQuit = true
        
        print("Thanks for using our application")
    }
    
    func getInput() -> String {
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    
    
    
    
}







