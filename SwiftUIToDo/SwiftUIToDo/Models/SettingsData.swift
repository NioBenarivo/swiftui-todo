//
//  SettingsData.swift
//  SwiftUIToDo
//
//  Created by Nakama on 12/02/20.
//  Copyright © 2020 Nakama. All rights reserved.
//

import SwiftUI

let settingsNetwork = [
    SettingsItem(id: 1, text: "Airplane Mode", icon: Image(systemName: "airplane"), showToggle: true),
    SettingsItem(id: 2, text: "Wi-Fi", icon: Image(systemName: "wifi"), showToggle: false, value: "TOKOPEDIA"),
    SettingsItem(id: 3, text: "Bluetooth", icon: Image(systemName: "dot.radiowaves.left.and.right"), value: "Off"),
    SettingsItem(id: 4, text: "Cellular", icon: Image(systemName: "antenna.radiowaves.left.and.right"), value: ""),
    SettingsItem(id: 5, text: "Personal Hotspot", icon: Image(systemName: "personalhotspot"), value: "Off"),
    SettingsItem(id: 6, text: "VPN", icon: Image(systemName: "v.square.fill"), showToggle: true)
]

let settingsNotifications = [
    SettingsItem(id: 1, text: "Notifications", icon: Image(systemName: "app.badge"), value: ""),
    SettingsItem(id: 2, text: "Sounds & Haptics", icon: Image(systemName: "speaker.2.fill"), value: ""),
    SettingsItem(id: 3, text: "Do Not Disturb", icon: Image(systemName: "moon.fill"), value: ""),
    SettingsItem(id: 4, text: "Screen Time", icon: Image(systemName: "hourglass"), value: ""),
]

let settingsGeneral = [
    SettingsItem(id: 1, text: "General", icon: Image(systemName: "gear"), value: ""),
    SettingsItem(id: 2, text: "Control Center", icon: Image(systemName: "capsule.fill"), value: ""),
    SettingsItem(id: 3, text: "Display & Brigthness", icon: Image(systemName: "textformat.size"), value: ""),
    SettingsItem(id: 4, text: "Accessibility", icon: Image(systemName: "person.crop.square.fill"), value: ""),
    SettingsItem(id: 5, text: "Wallpaper", icon: Image(systemName: "rectangle.fill"), value: ""),
    SettingsItem(id: 6, text: "Siri & Search", icon: Image(systemName: "magnifyingglass.circle"), value: ""),
    SettingsItem(id: 7, text: "Touch ID & Passcode", icon: Image(systemName: "lock.circle"), value: ""),
    SettingsItem(id: 8, text: "Emergency SOS", icon: Image(systemName: "s.square.fill"), value: ""),
    SettingsItem(id: 9, text: "Battery", icon: Image(systemName: "battery.100"), value: ""),
    SettingsItem(id: 10, text: "Privacy", icon: Image(systemName: "hand.raised.fill"), value: ""),
]
