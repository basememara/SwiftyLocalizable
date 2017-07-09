//
//  ViewController2.swift
//  SwiftyLocalizable
//
//  Created by Basem Emara on 7/9/17.
//  Copyright © 2017 Zamzam Inc. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerLabel.text = .localizedFormat(.currentAppNameVersion,
            Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String,
            Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as! String
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.startTutorial()
        }
    }
    
    /// Launched to start tutorial
    func startTutorial() {
        let alertController = UIAlertController(
            title: .localized(.tutorialAlertTitle),
            message: .localized(.tutorialAlertMessage),
            preferredStyle: .alert
        )
        
        alertController.addAction(UIAlertAction(title: .localized(.tutorialAlertAccept), style: .default) { _ in
            self.firstLabel.text = .localizedLocale(.oneCornerLabel1, 1)
            self.secondLabel.text = .localizedLocale(.twoCornerLabel2, 2)
            self.thirdLabel.text = .localizedLocale(.threeCornerLabel3, 3)
            self.fourthLabel.text = .localizedLocale(.fourCornerLabel4, 4)
        })
        
        present(alertController, animated: true)
    }
    
}
