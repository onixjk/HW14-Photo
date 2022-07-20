//
//  ViewController.swift
//  HW14-Photo
//
//  Created by Onix qq on 5.07.22.
//

import UIKit

class AlbumsViewController: UIViewController {

    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    // MARK: - Settings
    
    func setupView() {
        view.backgroundColor = .white
        title = Strings.albumTitle
    }
}

