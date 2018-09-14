//
//  Library.swift
//  Video Game Library
//
//  Created by Zachary Harper on 9/13/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import Foundation


class Library {
    var gamesArray: [Game] = [Game(title: "Minecraft"), Game(title: "GTA V"), Game(title: "Starbound"), Game(title: "Fortnite")]//intial games array
    
    func quit() {
         var shouldQuit = true
        
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
    
    func addGame() {
        print("Please enter the name of the game you would like to add")
        //get input from user and store in am variable
        
        var newGameTitle = readLine()
        // make sure thast the inoupt isnt nil or a string
        

        while newGameTitle == nil || newGameTitle == "" {
            print("Invalid game title. Please give a valid game title.")
            newGameTitle = readLine()
        }
        let newGame = Game(title: newGameTitle!)

        
        //add new game title to out game
        gamesArray.append(newGame)
    }
    
    func listAvailableGames() {
        for game in gamesArray {
            if game.checkedIn {
                print(game.title)
            }
        }
    }
    
    func listCheckedOutGames() {
        for game in gamesArray {
            if !game.checkedIn {
                print(game.title)
        }
    }
}
    func removeGame() {
        for index in 0..<gamesArray.count{
            print("\(index) : \(gamesArray[index].title)")
        }
        print("Please enter the number of game you want to remove")
        
        var userInput = Int(readLine()!)
        let validGameIndex = Array(0..<gamesArray.count)
        
        while userInput == nil || !validGameIndex.contains(userInput!){
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        gamesArray.remove(at: userInput!)
    }
    
    func checkOut() {
        for index in 0..<gamesArray.count{
            if gamesArray[index].checkedIn == true{
            print("\(index) : \(gamesArray[index].title)")
            }
        }
        print("Please enter the number of the game you want to check out : ")
        var userInput = Int(readLine()!)
        
        while userInput == nil{
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
     gamesArray[userInput!].checkedIn = false
 
        let currentCalender = Calendar.current
        let dueDate = currentCalender.date(byAdding: .day, value: 12, to: Date())
        gamesArray[userInput!].dueDate = dueDate
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        print("The game is due on : \(dateFormatter.string(from: dueDate!))")
    }
    
    func checkInGame() {
        for index in 0..<gamesArray.count{
            if gamesArray[index].checkedIn == false{
                print("\(index) : \(gamesArray[index].title)")
            }
        }
        print("Please enter the number of the game you want to check in : ")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil{
            print("Invalid input. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        gamesArray[userInput!].checkedIn = true
        
        gamesArray[userInput!].dueDate = nil

    }
    
    func listUnavailableGames() {
        for game in gamesArray {
            if !game.checkedIn {
                print(game.title)
                if let dueDate = game.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("\(game.title) is due on: \(dateFormatter.string(from: dueDate))")
                    
                }
            }
        }
    }
}















