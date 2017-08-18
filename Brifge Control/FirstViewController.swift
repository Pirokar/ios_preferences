//
//  FirstViewController.swift
//  Brifge Control
//
//  Created by Владимир Рыбалка on 18/08/2017.
//  Copyright © 2017 Vladimir Rybalka. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var officerLabel: UILabel!
    @IBOutlet var authorizationCodeLabel: UILabel!
    @IBOutlet var rankLabel: UILabel!
    @IBOutlet var warpDriveLabel: UILabel!
    @IBOutlet var warpFactorLabel: UILabel!
    @IBOutlet var favoriteTeaLabel: UILabel!
    @IBOutlet var favoriteCaptainLabel: UILabel!
    @IBOutlet var favoriteGadgetLabel: UILabel!
    @IBOutlet var favoriteAlienLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshFields()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refreshFields() {
        let defaults = UserDefaults.standard
        officerLabel.text = defaults.string(forKey: officerKey)
        authorizationCodeLabel.text = defaults.string(forKey: authorizationCodeKey)
        rankLabel.text = defaults.string(forKey: rankKey)
        warpDriveLabel.text = defaults.bool(forKey: warpDriveKey) ? "Включен" : "Выключен"
        warpFactorLabel.text = (defaults.object(forKey: warpFactorKey) as AnyObject).stringValue
        favoriteTeaLabel.text = defaults.string(forKey: favoriteTeaKey)
        favoriteCaptainLabel.text = defaults.string(forKey: favoriteCaptainKey)
        favoriteGadgetLabel.text = defaults.string(forKey: favoriteGadgetKey)
        favoriteAlienLabel.text = defaults.string(forKey: favoriteAlienKey)
    }

}

