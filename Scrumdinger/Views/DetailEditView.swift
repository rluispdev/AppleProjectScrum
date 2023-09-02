//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 02/09/23.
//

import SwiftUI

struct DetailEditView: View {
    ///@State  como privado para que possam ser acessadas só pelas views  que  definirmos.
    @State private var scrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                
                HStack {
                    Slider(value: $scrum.lengthInMinuteAsDouble, in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
