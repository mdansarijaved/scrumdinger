//
//  ThemeView.swift
//  scrumdinger
//
//  Created by Javed Ansari on 14/11/23.
//

import SwiftUI

struct ThemeView: View {
    let theme : Theme
    var body: some View{
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}
