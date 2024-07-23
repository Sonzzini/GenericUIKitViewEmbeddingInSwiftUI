//
//  EmbedderView.swift
//  UIKitEmbeddingSample
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 23/07/24.
//

import Foundation
import SwiftUI
import UIKit

struct EmbedderView: UIViewControllerRepresentable {
	
	typealias UIViewControllerType = FatherUIKITView
	
	var insideView: UIViewController? = nil
	
	func makeUIViewController(context: Context) -> FatherUIKITView {
		let fatherView = FatherUIKITView()
		
		if let insideView = insideView {
			fatherView.embeddedViewController = insideView
		}
		
		return fatherView
	}
	
	func updateUIViewController(_ uiViewController: FatherUIKITView, context: Context) {
		//
	}
}

