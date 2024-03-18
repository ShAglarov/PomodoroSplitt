//
//  ProfileCoordinator.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import XCoordinator
import UIKit

enum ProfileRoute: Route {
    case profile
}

class ProfileCoordinator: NavigationCoordinator<ProfileRoute> {
    
    init() {
        super.init(initialRoute: .profile)
    }
    
    override func prepareTransition(for route: ProfileRoute) -> NavigationTransition {
        switch route {
            
        case .profile:
            let viewController = UIViewController()
            viewController.view.backgroundColor = .white
            return .push(viewController)
        }
    }
}
