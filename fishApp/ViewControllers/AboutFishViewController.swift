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
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
