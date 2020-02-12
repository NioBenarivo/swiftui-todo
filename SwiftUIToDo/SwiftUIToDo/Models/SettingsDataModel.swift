//
//  SettingsDataModel.swift
//  SwiftUIToDo
//
//  Created by Nakama on 12/02/20.
//  Copyright © 2020 Nakama. All rights reserved.
//

import SwiftUI

struct SettingsItem: Identifiable {
    var id: Int
    var text: String
    var icon: Image
    var showToggle: Bool = false
    var value: String? = nil
}
