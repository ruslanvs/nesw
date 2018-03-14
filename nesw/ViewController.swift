//
//  ViewController.swift
//  nesw
//
//  Created by Ruslan Suvorov on 3/13/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textToGo: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func directionButtonPressed(_ sender: UIButton) {
        if let titleLabel = sender.titleLabel {
            if let text = titleLabel.text {
                textToGo = text
            }
        }
        performSegue( withIdentifier: "goDirection", sender: sender )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ToViewController
        destination.text = textToGo
    }
}

