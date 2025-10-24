//
//  SceneDelegate.swift
//  magic_pod_demo_app
//
//  Created by Hiroaki Matsushige on 2025/10/23.
//  Copyright © 2025 TRIDENT. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        if let window = window {
            window.backgroundColor = UIColor.white
            let vc = SplashViewController()
            let nvc = UINavigationController(rootViewController: vc)
            nvc.navigationBar.barStyle = UIBarStyle.black
            window.rootViewController = nvc
            window.makeKeyAndVisible()
        }

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 84 / 255.0, green: 157 / 255.0, blue: 84 / 255.0, alpha: 1.0)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    func sceneDidDisconnect(_ scene: UIScene) { }
    func sceneDidBecomeActive(_ scene: UIScene) { }
    func sceneWillResignActive(_ scene: UIScene) { }
    func sceneWillEnterForeground(_ scene: UIScene) { }
    func sceneDidEnterBackground(_: UIScene) { }
}
