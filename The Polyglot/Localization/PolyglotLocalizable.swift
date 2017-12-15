//
//  PolyglotLocalizable.swift
//  The Polyglot
//
//  Created by Marcelly Luise on 14/12/17.
//  Copyright © 2017 Marcelly Luise. All rights reserved.
//

import UIKit

class PolyglotLocalizable: NSObject {
    static let stayAndHaveACake: String = NSLocalizedString("Fica! Vai ter bolo!", tableName: "PolyglotLocalizable Table", bundle: Bundle.main, value: "Default value: Fica! Vai ter bolo!", comment: "When your work buddy is leaving early")
    
    static func jedaisThatDidStay(jedais: Int) -> String {
        return String.localizedStringWithFormat(NSLocalizedString("%d JedAIS ficaram pavê", comment: "Those that are believers"), jedais)
    }
}
