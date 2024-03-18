//
//  MainTabBarCoordinator.swift
//  SplitterIOS
//
//  Created by Shamil Aglarov on 18.03.2024.
//

import XCoordinator
import UIKit

enum TabBarRoute: Route {
    case home
}

class MainTabBarCoordinator: TabBarCoordinator<TabBarRoute> {
    private let homeRouter: StrongRouter<HomeRoute>
    private let notepadRouter: StrongRouter<NotepadRoute>
    private let profileRouter: StrongRouter<ProfileRoute>
    
    convenience init() {
        UITabBar.appearance().tintColor = .green
        UITabBar.appearance().unselectedItemTintColor = .gray
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
        
        let homeCoordinator = HomeCoordinator()
        homeCoordinator.rootViewController.tabBarItem = UITabBarItem(title: L10n.home, image: UIImage(systemName: "tree.circle"), tag: 0)
        
        let notepadCoordinator = NotepadCoordinator()
        notepadCoordinator.rootViewController.tabBarItem = UITabBarItem(title: L10n.notepad, image: UIImage(systemName: "tree.circle"), tag: 1)
        
        let profileCoordinator = ProfileCoordinator()
        profileCoordinator.rootViewController.tabBarItem = UITabBarItem(title: L10n.profile, image: UIImage(systemName: "tree.circle"), tag: 2)
        
        self.init(
            homeRouter: homeCoordinator.strongRouter,
            notepadRouter: notepadCoordinator.strongRouter,
            profileRouter: profileCoordinator.strongRouter
        )
    }
    
    init(
        homeRouter: StrongRouter<HomeRoute>,
        notepadRouter: StrongRouter<NotepadRoute>,
        profileRouter: StrongRouter<ProfileRoute>
    ) {
        self.homeRouter = homeRouter
        self.notepadRouter = notepadRouter
        self.profileRouter = profileRouter
        super.init(tabs: [homeRouter, notepadRouter, profileRouter],select: homeRouter)
    }
}
