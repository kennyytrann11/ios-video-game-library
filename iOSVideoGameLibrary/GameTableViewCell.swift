//
//  GameTableViewCell.swift
//  iOSVideoGameLibrary
//
//  Created by Kenny Tran on 4/20/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var availibleLabel: UILabel!
    
    
    
    func setUpCell(game: videogame) {
        nameLabel.text = game.title
        genreLabel.text = game.genre
        if game.availibility {
            availibleLabel.text = "Availible"
            availibleLabel.backgroundColor = #colorLiteral(red: 0.08350413293, green: 0.8181721568, blue: 0.2132225037, alpha: 1)
        } else {
            availibleLabel.text = "Not Availible"
            availibleLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
    
    
    
    
    
    
}
