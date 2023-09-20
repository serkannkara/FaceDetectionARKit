//
//  Coordinator.swift
//  FaceDetectionARKit
//
//  Created by Serkan  Kara on 19.09.2023.
//

import UIKit

protocol AppCoordinatoring {
    init(navigation: UINavigationController)
    func start()
}

class AppCoordinator: NSObject, AppCoordinatoring {
    
    var navigationController: UINavigationController
    
    required init(navigation: UINavigationController) {
        self.navigationController = navigation
    }
    
    func start() {
        let vc = ArSceneView()
        navigationController.viewControllers = [vc]
    }
}
