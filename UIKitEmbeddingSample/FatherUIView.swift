//
//  FatherUIView.swift
//  UIKitEmbeddingSample
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 23/07/24.
//

import Foundation
import UIKit


class FatherUIKITView: UIViewController {
	
	var embeddedViewController: UIViewController? = nil
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if let embeddedViewController = embeddedViewController {
			add(embeddedViewController, frame: .zero)
		}
	}
	
}

@nonobjc extension UIViewController {
	func add(_ child: UIViewController, frame: CGRect? = nil) {
		addChild(child)
		
		if let frame = frame {
			child.view.frame = frame
		}
		
		view.addSubview(child.view)
		child.didMove(toParent: self)
	}
	
	func remove() {
		willMove(toParent: nil)
		view.removeFromSuperview()
		removeFromParent()
	}
}
