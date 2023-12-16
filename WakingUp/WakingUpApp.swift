//
//  WakingUpApp.swift
//  WakingUp
//
//  Created by Norman Basham on 12/16/23.
//

import SwiftUI

@main
struct WakingUpApp: App {
    let models: [WakingUpModel]

    var body: some Scene {
        WindowGroup {
            ContentView(models: models)
        }
    }

    init() {
        models = WakingUpModel.load()
    }
}
