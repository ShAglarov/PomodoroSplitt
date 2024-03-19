// 
//  ModulePresenter.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import Foundation
import XCoordinator

protocol HomePresenterProtocol: AnyObject {
    var router: UnownedRouter<HomeRoute> { get }
    init(view: HomeViewControllerProtocol, router: UnownedRouter<HomeRoute>)
}

final class HomePresenter: HomePresenterProtocol {
    
    let router: UnownedRouter<HomeRoute>
    private weak var view: HomeViewControllerProtocol?
    
    init(view: HomeViewControllerProtocol, router: UnownedRouter<HomeRoute>) {
        self.view = view
        self.router = router
    }
}
