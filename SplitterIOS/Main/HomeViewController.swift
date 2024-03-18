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
    
    public var presenter: HomePresenterProtocol!
    
    override public func viewDidLoad() -> () {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension HomeViewController {
    func setupUI() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Welcome App"
    }
}
