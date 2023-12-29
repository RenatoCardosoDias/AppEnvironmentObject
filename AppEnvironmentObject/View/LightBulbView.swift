//
//  LigthBulbView.swift
//  AppEnvironmentObject
//
//  Created by Renato on 28/12/23.
//

import SwiftUI

struct LightBulbView: View {

	@EnvironmentObject private var appState: AppState

    var body: some View {
		Image(systemName: appState.isOn ? "lightbulb.fill" : "lightbulb")
			.font(.largeTitle)
			.foregroundStyle(appState.isOn ? .yellow : .black)
		Button("Toggle") {
			appState.isOn.toggle()
		}
    }
}

#Preview {
//	LightBulbView(isOn: .constant(false))
	LightBulbView()
		.environmentObject(AppState())
}
