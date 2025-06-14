//
//  TabView.swift
//  Notflix
//
//  Created by Vikas Raj Yadav on 22/05/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Tab = .home
    
    enum Tab {
        case home
        case activity
    }
    
    var body: some View {
        home()
    }
}

#Preview {
    MainView()
}
