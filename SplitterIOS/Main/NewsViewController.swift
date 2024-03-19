//
//  NewsViewController.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 19.03.2024.
//

import UIKit

protocol NewsViewControllerProtocol: AnyObject {
    
}

class NewsViewController: UIViewController, NewsViewControllerProtocol {

    public var presenter: NewsPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - Routing
    func showNewsScreen() {
        presenter.router.trigger(.home)
    }

}
