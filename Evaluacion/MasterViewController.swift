//
//  MasterViewController.swift
//  Evaluacion
//
//  Created by Brissia on 2017/10/03.
//  Copyright © 2017 Brissia. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var isEnglish = false
    
    let termsEn = "Terms"
    let termsSp = "Términos"
    
    @IBOutlet weak var termsCell: UITableViewCell!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.termsCell.textLabel?.text = self.isEnglish ? self.termsEn : self.termsSp
    }
}

