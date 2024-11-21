//
//  ViewController.swift
//  NewBarTutorial
//
//  Created by Николай Гринько on 21.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        navigationController?.navigationBar.tintColor = .black
       // navigationController?.navigationBar.backgroundColor = .white
        self.navigationItem.title = "Home Controller"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Its a button", style: .plain, target: nil, action: nil)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "star"), style: .plain, target: self, action: #selector(didTapButton))
        
        // меняет размер
//        self.navigationController?.navigationBar.prefersLargeTitles = true
//        self.navigationItem.largeTitleDisplayMode = .always
        
        self.navigationItem.largeTitleDisplayMode = .never
        
        setupNavImage()
    }

    // Устанавливает title = фото
    private func setupNavImage() {
        let imageView = UIImageView(image: UIImage(named: "apple-logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 113).isActive = true
        self.navigationItem.titleView = imageView
    }
    

    @objc func didTapButton() {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

