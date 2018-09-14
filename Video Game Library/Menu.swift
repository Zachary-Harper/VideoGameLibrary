//
//  Menu.swift
//  Video Game Library
//
//  Created by Zachary Harper on 9/11/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation

class Menu {
    
    let libraryOne = Library()
    
    var shouldQuit = false//when true we should quit running the video game library
    
    func go() {//handle making the menu run
        printMenu()
        while !shouldQuit {
            printMenu()
            quit()
            print(getInput())
            var input = getInput()
            //we need to have input validation validation to make sure that it falls between 1 an d 7
            while !validateInput(input: input){
                printMenu()
                var input = getInput()
            }
            handleInput(input)
        }
        
        
        
    }
    
    func validateInput(input: String) -> Bool  {
        let validMenuOptions = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOptions.contains(number)
        
        
        
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
            
                Please enter a number between 1 and 7
            
""")
    }
    
    //Make a function calles handleInput that takes our user  as a parameter depending on what they print put
    
    func handleInput(_ input: String) {
        
        switch getInput() {
        case "1":
            //call add game function
            libraryOne.addGame()
        case "2":// call remove game function
            libraryOne.removeGame()
        case "3"://call list available games
            libraryOne.listAvailableGames()
        case "4"://call check out games
            libraryOne.checkOut()
        case "5"://call check in games
            libraryOne.checkInGame()
        case "6"://call list checked out games
            libraryOne.listUnavailableGames()
        case "7"://call quit
            quit()
        default:
            break
        }
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







