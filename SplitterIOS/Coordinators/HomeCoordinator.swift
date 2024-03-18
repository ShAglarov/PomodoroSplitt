//
//  HomeCoordinators.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import XCoordinator
import UIKit

enum HomeRoute: Route {
    case home
}

class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    
    init() {
        super.init(initialRoute: .home)
    }
    
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
            
        case .home:
            viewController.view.backgroundColor = .white
            return .push(buildHomeScreen())
        }
    }
    
    // MARK: - Build Screens
    private func buildHomeScreen() -> UIViewController {
        let view = HomeViewController()
        let presenter = HomePresenter(view: view, router: unownedRouter)
        view.presenter = presenter
        return view
    }
}
