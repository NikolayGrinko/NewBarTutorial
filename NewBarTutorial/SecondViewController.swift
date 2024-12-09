//
//  SecondViewController.swift
//  NewBarTutorial
//
//  Created by Николай Гринько on 22.11.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPurple
        self.navigationItem.title = "Second Controller"
        
        // Скрывает стрелку назад
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        //  self.navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
}
