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
            
            ProgressView(value: 5, total: 10)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                
                Button(action: {}) {
                    Image(systemName: "foward.fill")
                }
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
