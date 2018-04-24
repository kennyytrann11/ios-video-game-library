//
//  videogame.swift
//  iOSVideoGameLibrary
//
//  Created by Kenny Tran on 4/18/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import Foundation
import RealmSwift

class videogame: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var genre: String = ""
    @objc dynamic var dueDate: Date = Date()
    @objc dynamic var availibility = true

    

}







