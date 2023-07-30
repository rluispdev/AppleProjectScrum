//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 30/07/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            
         ProgressView( value: 5, total: 10)
            
            HStack {
                
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                VStack {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
    
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
