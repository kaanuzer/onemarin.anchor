//
//  MainViewController.swift
//  onemarin.anchor
//
//  Created by Kaan Uzer on 15.10.2024.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        let label = UILabel()
        label.text = "ana ekran"
        label.font = UIFont.systemFont(ofSize: 32,weight: .bold)
        label.textColor  = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
     
    }
}
