//
//  SplashViewModel.swift
//  onemarin.anchor
//
//  Created by Kaan Uzer on 15.10.2024.
//

import UIKit

class SplashViewModel {
    var onNavigateToMainScreen:(()-> Void)?
    
    func startTimer(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.navigateToMainScreen()
        }
    }
    
    private func navigateToMainScreen(){
        onNavigateToMainScreen?()
    }
}
