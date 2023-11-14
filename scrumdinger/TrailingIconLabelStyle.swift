//
//  TrailingIconLabelStyle.swift
//  scrumdinger
//
//  Created by Javed Ansari on 11/11/23.
//

import SwiftUI

struct TrailingIconLabelStyle : LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
            
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon : Self { Self() }
}
