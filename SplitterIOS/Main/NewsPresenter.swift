//
//  NewsPresenter.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 19.03.2024.
//

import Foundation
import XCoordinator

protocol NewsPresenterProtocol: AnyObject {
    var router: UnownedRouter<HomeRoute> { get }
    init(view: NewsViewControllerProtocol, router: UnownedRouter<HomeRoute>)
}
final class NewsPresenter: NewsPresenterProtocol {
    let router: UnownedRouter<HomeRoute>
    private weak var view: NewsViewControllerProtocol?
    
    init(view: NewsViewControllerProtocol, router: UnownedRouter<HomeRoute>) {
        self.view = view
        self.router = router
    }
}
