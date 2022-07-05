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
        libraryViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.on.rectangle"), tag: 0)
        
        let forYouViewController = ForYouViewController()
        let forYouNavigationController = UINavigationController(rootViewController: forYouViewController)
        forYouNavigationController.navigationBar.prefersLargeTitles = true
        forYouViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(systemName: "doc.richtext"), tag: 1)
        
        
        
        tabBar.setViewControllers([libraryNavigationController,
                                   forYouNavigationController],
                                  animated: true)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
}

