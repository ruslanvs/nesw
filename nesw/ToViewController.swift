//
//  ToViewController.swift
//  nesw
//
//  Created by Ruslan Suvorov on 3/13/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ToViewController: UIViewController {
    
    @IBOutlet weak var directionLabel: UILabel!

    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        directionLabel.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
