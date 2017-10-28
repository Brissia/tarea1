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
    
    let contentsAbstractionEn = [
        "title" : "Abstraction",
        "image" : "abstraction",
        "body" : "bla bla bla",
        "link" : "abstr.com"]
    let contentsAbstractionSp = [
        "title" : "Abstraction",
        "image" : "abstraction",
        "body" : "bla bla bla",
        "link" : "abstr.com"]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.termsCell.textLabel?.text = self.isEnglish ? self.termsEn : self.termsSp
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let controller = segue.destination as? DetailViewController, let identifier = segue.identifier {
            switch identifier {
            case "abstraction":
                controller.contents = self.isEnglish ? self.contentsAbstractionEn : self.contentsAbstractionSp
            default:
                break
            }
        }
    }
}

