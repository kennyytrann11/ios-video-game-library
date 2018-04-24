//
//  NewGameViewController.swift
//  iOSVideoGameLibrary
//
//  Created by Kenny Tran on 4/17/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class NewGameViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var SaveButton: UIBarButtonItem!
    @IBOutlet weak var AddGameTextField: UITextField!
    @IBOutlet weak var GameTitleLabel: UILabel!
    @IBOutlet weak var GenrePickerView: UIPickerView!
    
    let genres = ["First-Person Shooter", "Third-Person Shooter", "Second-Person Shooter", "Top-down Shooter", "Survival Shooter", "Fighting Shooter", "ṣ̷̑͑c̴͎̠̓h̵͙̙̑̄ö̴͜o̸̰͐l̴͚̖̄ ̶͓̦͂̅ŝ̸̰̉c̶̣͖̈́͆h̸̏ͅo̸͉̫͆̈́ô̴̠͈͂t̵̨͇̐͊ě̵̦̬r̸̮͂͆", "Shootim"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genres.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genres[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GenrePickerView.delegate = self
        GenrePickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func SaveGameButton(_ sender: Any) {
        if (AddGameTextField.text?.isEmpty)! {
            let alert = UIAlertController(title: "Error", message: "You need to fill out the game title field", preferredStyle: .alert)
//            let action1 = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
//                print(" ")
//            })
            self.present(alert, animated: true)
        } else {
            let newGame = videogame()
            newGame.title = AddGameTextField.text!
            newGame.genre = genres[GenrePickerView.selectedRow(inComponent: 0)]
            GameManager.sharedInstance.addGame(newGame)
            self.performSegue(withIdentifier: "unwindToLibrary", sender: self)
            
        }
    }
}
