//
//  GameManager.swift
//  iOSVideoGameLibrary
//
//  Created by Kenny Tran on 4/19/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import Foundation
import RealmSwift

final class GameManager {
    
    static let sharedInstance = GameManager()
    
    var games : Results<videogame>!
    
    private init() {
        games = realm.objects(videogame.self)
    }
    
    let realm = try! Realm()
    let calendar = Calendar.current
    
    
    
    
    func addGame(_ game: videogame) {
        try! realm.write {
            realm.add(game)
        }
    }
    
    func removeGame(_ game: videogame){
        try! realm.write {
            realm.delete(game)
        }
    }
    
    func getGame(index: Int) -> videogame {
        return games[index]
        
    }
    
    func getGameCount() -> Int {
        return games.count
        
    }
    func checkInOrOut(game: videogame) {
        try! realm.write {
            if game.availibility {
                game.availibility = false
                game.dueDate = calendar.date(byAdding: .day, value: 3, to: Date())!
            } else {
                game.availibility = true
                game.dueDate = Date()
            }
        }
    }
    
    
    
    
}
