//
//  ViewController.swift
//  HW14-Photo
//
//  Created by Onix qq on 5.07.22.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    //MARK: - Views
    
    let addButton = UIBarButtonItem(barButtonSystemItem: .add,
                                    target: nil,
                                    action: nil)
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupNavigationBar()
    }
    
    // MARK: - Settings
    
    func setupView() {
        view.backgroundColor = .systemBackground
        title = Strings.albumTitle
    }
    
    private func setupNavigationBar() {
        navigationItem.leftBarButtonItems = [addButton]
    }

}

