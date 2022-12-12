//
//  SelectionRowExtention.swift
//  Omnibus
//
//  Created by 김도현 on 2022/11/22.
//

import SwiftUI

struct SelectionRow: View {
    
    let title: String
    @Binding var selectedItem: String?
    
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            if title == selectedItem {
                Image(systemName: "checkmark")
                    .foregroundColor(.accentColor)
            }
        }
        .contentShape(Rectangle())
    }
}

struct SelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectionRow(title: "NoName", selectedItem: .constant("NoName"))
    }
}
