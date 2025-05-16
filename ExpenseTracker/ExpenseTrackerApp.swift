//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Aryan Vasudeva on 14/5/25.
//

import SwiftUI
import FirebaseCore

@main
struct ExpenseTrackerApp: App {
    
    #if os(macOS)
    @NSApplicationDelegateAdaptor var appDelegate: AppDelegate
    #else
    @UIApplicationDelegateAdaptor var appDelegate: AppDelegate
    #endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            #if os(macOS)
            .frame(minWidth: 729, minHeight: 480)
            #endif
        }
        #if os(macOS)
        .windowResizability(.contentMinSize)
        #endif
    }
}
