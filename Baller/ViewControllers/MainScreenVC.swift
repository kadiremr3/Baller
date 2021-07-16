//
//  MainScreenVC.swift
//  Baller
//
//  Created by Kadir Emre on 12.07.2021.
//

import UIKit
import MapKit

class MainScreenVC: UIViewController {
    
    @IBOutlet var gamesTableView: UITableView!
   
    var games = [Game]()
    var newGame = Game()

    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        newGame.gameName = "Mükremin"
        newGame.date = Date.init()
        newGame.location = CLLocation.init()
        
        
        
        games.append(newGame)
        games.append(newGame)
        games.append(newGame)
        games.append(newGame)
        games.append(newGame)
        games.append(newGame)
       
        gamesTableView.delegate = self
        gamesTableView.dataSource = self
        gamesTableView.register(UINib(nibName: K.gameCellNib, bundle: nil), forCellReuseIdentifier: K.gameCellIdentifier)
    }

}

extension MainScreenVC: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = gamesTableView.dequeueReusableCell(withIdentifier: K.gameCellIdentifier, for: indexPath) as! GameCell
        return cell
    }
    
    
}
