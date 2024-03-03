//
//  TabBarController.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 03.03.2024.
//

import UIKit
class TabBarController: UITabBarController {
    
    private var window1 = ViewController()
    private var window2 = ViewController()
    private var window3 = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        let windowVK1 = UINavigationController(rootViewController: window1)
        let windowVK2 = UINavigationController(rootViewController: window2)
        let windowVK3 = UINavigationController(rootViewController: window3)

        windowVK1.tabBarItem = UITabBarItem(title: "window1", image: UIImage(named: "1"), tag: 0)
        windowVK2.tabBarItem = UITabBarItem(title: "window2", image: UIImage(named: "2"), tag: 1)
        windowVK3.tabBarItem = UITabBarItem(title: "window3", image: UIImage(named: "3"), tag: 2)
        setViewControllers([windowVK1, windowVK2, windowVK3], animated: true)
    }
}
