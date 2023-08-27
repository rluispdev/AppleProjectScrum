//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 27/08/23.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        
        Text("Hello World!")
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
