//
//  AppDelegate.swift
//  HW14-Photo
//
//  Created by Onix qq on 5.07.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setWindow()
        return true
    }
    
    func setWindow() {
        let tabBar = UITabBarController()
        
        let libraryViewController = LibraryViewController()
        let libraryNavigationController = UINavigationController(rootViewController: libraryViewController)
        libraryNavigationController.navigationBar.prefersLargeTitles = true
        libraryViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: .actions, tag: 0)
        
        
        
        tabBar.setViewControllers([libraryNavigationController],
                                  animated: true)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
}

