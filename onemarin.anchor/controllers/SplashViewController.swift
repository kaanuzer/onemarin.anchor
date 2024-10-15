//
//  SplashViewController.swift
//  onemarin.anchor
//
//  Created by Kaan Uzer on 15.10.2024.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let viewModel = SplashViewModel()
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(imageLiteralResourceName: "splash"))
        imageView.translatesAutoresizingMaskIntoConstraints = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        bindViewModel()
        viewModel.startTimer()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([
                   logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                   logoImageView.widthAnchor.constraint(equalToConstant: 150),
                   logoImageView.heightAnchor.constraint(equalToConstant: 150)
               ])
    }
    
    private func bindViewModel(){
        viewModel.onNavigateToMainScreen = { [weak self] in self?.navigateToMainScreen()
        }
    }
    
    private func navigateToMainScreen(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if let mainVC = storyboard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
                    mainVC.modalPresentationStyle = .fullScreen
                    mainVC.modalTransitionStyle = .crossDissolve
                    self.present(mainVC, animated: true, completion: nil)
    }
    }
}
