//
//  AppLocalizable.swift
//  Swifty Localizable
//
//  Created by Basem Emara on 7/3/17.
//  Copyright © 2017 Zamzam Inc. All rights reserved.
//

import Foundation

// MARK: - Main Scene
extension Localizable {
    static let currentAppNameVersion = Localizable(NSLocalizedString("current.app.name.version", comment: "Center display of app name and current version"))
    static let oneCornerLabel1 = Localizable(NSLocalizedString("one.corner.label.1", comment: "First corner of main screen translating number 1"))
    static let twoCornerLabel2 = Localizable(NSLocalizedString("two.corner.label.2", comment: "Second corner of main screen translating number 2"))
    static let threeCornerLabel3 = Localizable(NSLocalizedString("three.corner.label.3", comment: "Third corner of main screen translating number 3"))
    static let fourCornerLabel4 = Localizable(NSLocalizedString("four.corner.label.4", comment: "Fourth corner of main screen translating number 4"))
}

// MARK: - Tutorial
extension Localizable {
    static let tutorialAlertTitle = Localizable(NSLocalizedString("tutorial.alert.title", comment: "Tutorial intro and getting started"))
    static let tutorialAlertMessage = Localizable(NSLocalizedString("tutorial.alert.message", comment: "Tutorial submitting feedback and contact"))
    static let tutorialAlertAccept = Localizable(NSLocalizedString("tutorial.alert.accept", comment: "Tutorial done and dismiss"))
}
