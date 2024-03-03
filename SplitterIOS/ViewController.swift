//
//  ViewController.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 03.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var delegate: SceneRouteDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension ViewController {
    func setupUI() {
        view.backgroundColor = .systemBackground
        navigationItem.title = "Добро пожаловать в разработку Day_Splitter"
    }
}
