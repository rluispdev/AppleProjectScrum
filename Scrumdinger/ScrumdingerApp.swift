//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 30/07/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
