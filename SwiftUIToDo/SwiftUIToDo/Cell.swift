//
//  Cell.swift
//  SwiftUIToDo
//
//  Created by Nakama on 12/02/20.
//  Copyright © 2020 Nakama. All rights reserved.
//

import SwiftUI

struct HorizontalLineShape: Shape {

    func path(in rect: CGRect) -> Path {

        let fill = CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height)
        var path = Path()
        path.addRoundedRect(in: fill, cornerSize: CGSize(width: 2, height: 2))

        return path
    }
}

struct HorizontalLine: View {
    private var color: Color? = nil
    private var height: CGFloat = 1.0

    init(color: Color, height: CGFloat = 1.0) {
        self.color = color
        self.height = height
    }

    var body: some View {
        HorizontalLineShape().fill(self.color!).frame(minWidth: 0, maxWidth: .infinity, minHeight: height, maxHeight: height).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -16)).opacity(0.20)
    }
}

struct Cell: View {
    @State private var isToggled = true
    let settingsItem: SettingsItem
    
    var body: some View {
        VStack {
            HStack {
                settingsItem.icon.resizable().scaledToFit().frame(width: 24, height: 24)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8))
                Text(settingsItem.text)
                Spacer()
                if settingsItem.showToggle {
                    Toggle("", isOn: $isToggled)
                } else {
                    settingsItem.value.map({ Text($0).foregroundColor(.secondary) })
                    Image(systemName: "chevron.right").foregroundColor(.secondary)
                }
            }
            HorizontalLine(color: .secondary)
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(settingsItem: settingsNetwork[0])
    }
}
