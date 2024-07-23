//
//  ContentView.swift
//  UIKitEmbeddingSample
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 23/07/24.
//

import SwiftUI

struct ContentView: View {
	
	
	var body: some View {
		
		VStack {
			
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundStyle(.tint)
			
			Text("Hello, world!")
			
			EmbedderView(insideView: SecondUIView())
			
			Text("SwiftUI")
			
			EmbedderView(insideView: InsideView())
		}
		//.padding()
		
	}
}

#Preview {
	ContentView()
}
