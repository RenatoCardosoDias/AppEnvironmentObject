//
//  ContentView.swift
//  AppEnvironmentObject
//
//  Created by Renato on 28/12/23.
//

import SwiftUI

//Pre iOS 17
class AppState: ObservableObject{
	@Published var isOn: Bool = false
}

struct ContentView: View {
	@EnvironmentObject private var appState: AppState

    var body: some View {
        VStack {
			LightRoomView()
        }
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(appState.isOn ? .black : .white)
    }
}

#Preview {
    ContentView()
		.environmentObject(AppState())
}

