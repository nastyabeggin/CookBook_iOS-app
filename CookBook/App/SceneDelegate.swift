//
//  SceneDelegate.swift
//  CookBook
//
//  Created by SERGEY SHLYAKHIN on 28.11.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    private let onboardingViewController = OnboardingViewController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        onboardingViewController.delegate = self

        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        window?.backgroundColor = .systemBackground
        window?.rootViewController = onboardingViewController
        window?.makeKeyAndVisible()
    }
}

extension SceneDelegate: OnboardingViewControllerDelegate {
    func didFinishOnboarding() {
        print("Все ОК!")
    }
}
