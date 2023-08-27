//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Rafael Gonzaga on 26/08/23.
//

import SwiftUI

// Peersonalizando o estilo da label.

struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
