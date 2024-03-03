//
//  SceneDelegate.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 03.03.2024.
//

import UIKit

protocol SceneRouteDelegate: AnyObject {
    func setLoginStatus(isLogin: Bool)
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate, SceneRouteDelegate {
    
    var window: UIWindow?
    lazy var isLogin: Bool = true
    
    override init(){
        super.init()
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        window.makeKeyAndVisible()
        self.window = window
        
        setLoginStatus(isLogin: isLogin)
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {}
    
    func sceneDidBecomeActive(_ scene: UIScene) {}
    
    func sceneWillResignActive(_ scene: UIScene) {}
    
    func sceneWillEnterForeground(_ scene: UIScene) {}
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
    
    //Функция устанвливает рут контроллер у приложения
    private func startRootController(viewController: UIViewController){
        self.window?.rootViewController = UINavigationController(rootViewController:
                                                                    viewController)
    }
    
    //Делегат роутинга, вызывать при авторизации и разлогина
    func setLoginStatus(isLogin: Bool) {
        if isLogin {
            let startController = TabBarController()
            startRootController(viewController: startController)
        } else {
            let startController = ViewController()
            startController.delegate = self
            startRootController(viewController: startController)
        }
    }
}

