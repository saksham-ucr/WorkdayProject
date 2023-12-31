//
//  WorkdayProjectApp.swift
//  WorkdayProject
//
//  Created by user242726 on 6/13/23.
//

import SwiftUI

@main
struct WorkdayProjectApp: App {
    @StateObject var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(vm)
        }
    }
}
