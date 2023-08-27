//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 26/08/23.
//

 

import SwiftUI

//Essa View exibe uma lista de scrums diários

struct ScrumsView: View {
    let scrums: [DailyScrum]
  
    var body: some View {
        
        //Configurando a navegação entre as telas.
        
            List(scrums) { scrum in
                
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                        
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            
            .toolbar {
                Button(action: {}) {
                   Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
