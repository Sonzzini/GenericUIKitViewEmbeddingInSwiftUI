//
//  SecondUIView.swift
//  UIKitEmbeddingSample
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 23/07/24.
//

import Foundation
import UIKit

class SecondUIView: UIViewController {
	
	let welcomeLabel: UILabel = {
		let label = UILabel()
		
		label.translatesAutoresizingMaskIntoConstraints = false
		label.text = "Hello from UIKit! The second time!"
		let font = UIFont(name: "SFPro", size: 30)
		label.font = font
		
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setUIElements()
		setConstraints()
	}
	
	func setUIElements() {
		self.view.addSubview(welcomeLabel)
	}
	
	func setConstraints() {
		NSLayoutConstraint.activate([
			welcomeLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
			welcomeLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 30)
		])
	}
	
}
