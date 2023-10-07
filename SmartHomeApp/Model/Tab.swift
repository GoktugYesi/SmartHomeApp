//
//  Tab.swift
//  SmartHomeApp
//
//  Created by Göktug Yeşil on 2.10.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case anasayfa = "Anasayfa"
    case arama = "Arama"
    
    var systemImage: String {
        switch self {
        case .anasayfa:
            return "house.fill"
        case .arama:
            return "magnifyingglass"
        }
    }
    
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}
