//
//  FishesTableViewController.swift
//  fishApp
//
//  Created by NIKOLAY OSIPOV on 20.06.2021.
//

import UIKit

class FishesTableViewController: UITableViewController {
    let fishes = Fish.createFishes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return fishes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FishTableViewCell
        let fish = fishes[indexPath.row]
        
        cell.nameLabel.text = fish.name
        cell.fishImageView.image = UIImage(named: fish.image)

        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutFishVC = segue.destination as?  AboutFishViewController
        else { return }
        
        guard let indexPath =  tableView.indexPathForSelectedRow
        else { return }
        
        aboutFishVC.fish = fishes[indexPath.row]
       
    }
}
