//
//  AppEnvironmentObjectApp.swift
//  AppEnvironmentObject
//
//  Created by Renato on 28/12/23.
//

import SwiftUI

@main
struct AppEnvironmentObjectApp: App {
//	2ª forma de inicializar
//	@StateObject private var appState = AppState()
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(AppState())
//			2ª Forma
//				.environmentObject(appState)
        }
    }
}
