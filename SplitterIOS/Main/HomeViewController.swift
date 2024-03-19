// 
//  ModuleViewController.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import UIKit
import SnapKit

protocol HomeViewControllerProtocol: AnyObject {
    
}

final class HomeViewController: UIViewController, HomeViewControllerProtocol {
    
    var delegate: SceneRouteDelegate?
    static var news = [News(id: "01", title: "Test-1"), News(id: "01", title: "Test2")]
    
    public var presenter: HomePresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        setupUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
        
    }
    
    @objc func addButtonTapped() {
        showNewsScreen()
    }
    
    // MARK: - Routing
    func showNewsScreen() {
        presenter.router.trigger(.news(HomeViewController.news))
        
    }
}

extension HomeViewController {
    func setupUI() {
        
    }
}
