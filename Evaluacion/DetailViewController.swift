//
//  DetailViewController.swift
//  Evaluacion
//
//  Created by Brissia on 2017/10/03.
//  Copyright © 2017 Brissia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contents: [String : String]!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.titleLabel.text = self.contents["title"]
    }
}

