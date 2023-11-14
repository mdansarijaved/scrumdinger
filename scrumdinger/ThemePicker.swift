//
//  ThemePicker.swift
//  scrumdinger
//
//  Created by Javed Ansari on 14/11/23.
//

import SwiftUI

struct ThemePicker: View{
    
    @Binding var selection: Theme
    
    var body : some View{
        Picker("Theme", selection: $selection){
            ForEach(Theme.allCases){theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}


struct ThemePicker_Previews: PreviewProvider{
    static var previews: some View{
        ThemePicker(selection: .constant(.periwinkle))
    }
}
