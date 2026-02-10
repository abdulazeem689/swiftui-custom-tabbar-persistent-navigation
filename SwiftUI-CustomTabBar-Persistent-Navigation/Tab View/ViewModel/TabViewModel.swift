//
//  TabViewModel.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 10/02/26.
//

import Combine

final class TabViewModel: BaseViewModel {
    @Published private(set) var selectedTab = Tab.home
    
    func onSelect(tab: Tab) {
        selectedTab = tab
    }
}
