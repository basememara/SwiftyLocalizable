//
//  ViewController.swift
//  SwiftyLocalizable
//
//  Created by Basem Emara on 7/6/17.
//  Copyright © 2017 Zamzam Inc. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerLabel.text = String(format: NSLocalizedString("current.app.name.version", comment: "Center display of app name and current version"),
            Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String,
            Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as! String)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.startTutorial()
        }
    }
    
    /// Launched to start tutorial
    func startTutorial() {
        let alertController = UIAlertController(
            title: NSLocalizedString("tutorial.alert.title", comment: "Title of main tutorial dialog"),
            message: NSLocalizedString("tutorial.alert.message", comment: "Message of main tutorial dialog"),
            preferredStyle: .alert
        )
        
        alertController.addAction(UIAlertAction(title: NSLocalizedString("tutorial.alert.accept", comment: "OK button of main tutorial dialog"), style: .default) { _ in
            self.firstLabel.text = .localizedStringWithFormat(NSLocalizedString("one.corner.label.1", comment: "First corner of main screen translating number 1"), 1)
            self.secondLabel.text = .localizedStringWithFormat(NSLocalizedString("two.corner.label.2", comment: "Second corner of main screen translating number 2"), 2)
            self.thirdLabel.text = .localizedStringWithFormat(NSLocalizedString("three.corner.label.3", comment: "Third corner of main screen translating number 3"), 3)
            self.fourthLabel.text = .localizedStringWithFormat(NSLocalizedString("four.corner.label.4", comment: "Fourth corner of main screen translating number 4"), 4)
        })
        
        present(alertController, animated: true)
    }
    
}

