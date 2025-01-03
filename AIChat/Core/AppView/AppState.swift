//
//  AppState.swift
//  AIChat
//
//  Created by Miad Jalili on 2025-01-02.
//

import SwiftUI

@Observable
class AppState {
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.ShowTabbarView = showTabBar
        }
    }
    
    init(showTabBar: Bool = UserDefaults.ShowTabbarView) {
        self.showTabBar = showTabBar
    }
    
    func updateViewState(showTabBarView: Bool) {
        self.showTabBar = showTabBarView
    }
    
}

extension UserDefaults {
    
    private struct Keys {
        static let showTabbarView: String = "showTabbarView"
    }
    static var ShowTabbarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabbarView)
        } set {
            standard.set(newValue, forKey: Keys.showTabbarView)
        }
    }
}
