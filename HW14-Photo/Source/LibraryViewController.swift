//
//  LibraryViewController.swift
//  HW14-Photo
//
//  Created by Onix qq on 5.07.22.
//

import UIKit

class LibraryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = .white
        title = Strings.libraryTitle
    }
    
}
