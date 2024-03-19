//
//  HomeCoordinators.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import XCoordinator
import UIKit

struct News {
    let id: String
    let title: String
}

enum HomeRoute: Route {
    case home
    case news([News])
}

class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    
    init() {
        super.init(initialRoute: .home)
    }
    
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
            
        case .home:
            viewController.view.backgroundColor = .systemBackground
            let homeVC = buildHomeScreen()
            homeVC.navigationItem.title = "Welcome"
            return .push(homeVC)
        case .news(let news):
            viewController.view.backgroundColor = .systemBackground
            let newsVC = buildHomeScreen()
            newsVC.navigationItem.title = news[Int.random(in: 0..<2)].title
            return .push(newsVC)
        }
    }
    
    // MARK: - Build Screens
    private func buildHomeScreen() -> UIViewController {
        let view = HomeViewController()
        let presenter = HomePresenter(view: view, router: unownedRouter)
        view.presenter = presenter
        return view
    }
    
    private func buildNewsScreen() -> UIViewController {
        let view = NewsViewController()
        let presenter = NewsPresenter(view: view, router: unownedRouter)
        view.presenter = presenter
        return view
    }
}
