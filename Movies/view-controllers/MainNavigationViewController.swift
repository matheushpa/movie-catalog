//
//  MainNavigationViewController.swift
//  Movies
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 26/10/20.
//

import UIKit

class MainNavigationViewController: UINavigationController {

    private let catalogViewController = CatalogViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        viewControllers = [catalogViewController]
    }
    
    // MARK: - Setup methods
    
    func setupNavigationBar() {
        navigationBar.isTranslucent = false
//        navigationBar.tintColor = UIColor.init(netHex: kBlueColor)
//        navigationBar.barTintColor = UIColor.init(netHex: kBlueColor)
//        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: UIFont(name: kDefaultFont, size: 16) as Any]
    }
}
