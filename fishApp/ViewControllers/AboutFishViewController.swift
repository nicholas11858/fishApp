//
//  AboutFishViewController.swift
//  fishApp
//
//  Created by NIKOLAY OSIPOV on 20.06.2021.
//

import UIKit

class AboutFishViewController: UIViewController {
    var fish: Fish? = nil
    
    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var fishNameLabel: UILabel!
    @IBOutlet weak var fishDescriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let fish = fish else { return }
        fishImageView.image = UIImage(named: fish.image)
        fishNameLabel.text = fish.name
        fishDescriptionTextView.text = fish.description
    }
}
