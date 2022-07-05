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
        libraryViewController.tabBarItem = UITabBarItem(title: Strings.libraryNavigationControllerTitle, image: UIImage(systemName: "photo.on.rectangle"), tag: 0)
        
        let forYouViewController = ForYouViewController()
        let forYouNavigationController = UINavigationController(rootViewController: forYouViewController)
        forYouNavigationController.navigationBar.prefersLargeTitles = true
        forYouViewController.tabBarItem = UITabBarItem(title: Strings.forYouNavigationControllerTitle, image: UIImage(systemName: "doc.richtext"), tag: 1)
        
        let albumsViewController = AlbumsViewController()
        let albumsNavigationController = UINavigationController(rootViewController: albumsViewController)
        albumsNavigationController.navigationBar.prefersLargeTitles = true
        albumsViewController.tabBarItem = UITabBarItem(title: Strings.albumNavigationControllerTitle, image: UIImage(systemName: "rectangle.stack"), tag: 2)
        
        let searchViewController = SearchViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        searchNavigationController.navigationBar.prefersLargeTitles = true
        searchViewController.tabBarItem = UITabBarItem(title: Strings.searchNavigationControllerTitle, image: UIImage(systemName: "magnifyingglass"), tag: 3)
        
        tabBar.setViewControllers([libraryNavigationController,
                                   forYouNavigationController,
                                   albumsNavigationController,
                                   searchNavigationController],
                                  animated: true)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
}

