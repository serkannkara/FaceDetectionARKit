//
//  AppDelegate.swift
//  FaceDetectionARKit
//
//  Created by Serkan  Kara on 19.09.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinatoring?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let nav = UINavigationController()
        self.window = setupWindow(nav)
        setupCoordinator(navController: nav)
        return true
    }
}

extension AppDelegate {
    private func setupWindow(_ nav: UINavigationController, makeKeyAndVisible: Bool = true) -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = nav
        if #available(iOS 13.0, *) {
            window.overrideUserInterfaceStyle = .light
        }
        if makeKeyAndVisible {
            window.makeKeyAndVisible()
        }
        return window
    }
    
    private func setupCoordinator(navController: UINavigationController) {
        coordinator = AppCoordinator(navigation: navController)
        coordinator?.start()
    }
}
