//
//  ContentView.swift
//  SwiftUIToDo
//
//  Created by Nakama on 06/02/20.
//  Copyright © 2020 Nakama. All rights reserved.
//

import SwiftUI

struct SettingsViewController: View {
    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }

    @State private var searchText: String = ""
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    // Search view
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")

                            TextField("search", text: $searchText, onEditingChanged: { isEditing in
                                self.showCancelButton = true
                            }, onCommit: {
                                print("onCommit")
                            }).foregroundColor(.primary)

                            Button(action: {
                                self.searchText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                            }
                        }
                        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                        .foregroundColor(.secondary)
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10.0)
                        
                        if showCancelButton  {
                            Button("Cancel") {
                                    UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                                    self.searchText = ""
                                    self.showCancelButton = false
                            }
                            .foregroundColor(Color(.systemBlue))
                        }
                    }
                    .padding(.horizontal)
                    .navigationBarHidden(showCancelButton)
                }
                List {
                    Section() {
                        ForEach(settingsNetwork.filter { $0.text.hasPrefix(searchText) || searchText == ""}) {
                            item in Cell(settingsItem: item)
                        }
                    }
                    Spacer(minLength: 4)
                    Section() {
                        ForEach(settingsNotifications.filter { $0.text.hasPrefix(searchText) || searchText == ""}) {
                            item in Cell(settingsItem: item)
                        }
                    }
                    Spacer(minLength: 4)
                    Section() {
                        ForEach(settingsGeneral.filter { $0.text.hasPrefix(searchText) || searchText == ""}) {
                            item in Cell(settingsItem: item)
                        }
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsViewController_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewController()
    }
}

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}
