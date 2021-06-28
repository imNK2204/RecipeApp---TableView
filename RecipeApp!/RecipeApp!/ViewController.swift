//
//  ViewController.swift
//  RecipeApp!
//
//  Created by srk on 26/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let ImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    private let SignUp:UIButton = {
        let button = UIButton()
        button.setTitle("Go For Recipes..!", for: .normal)
        button.addTarget(self, action: #selector(moveTo), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.layer.cornerRadius = 20
        return button
    }()
    
    @objc func moveTo() {
        let vc = TableViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipe App!"
        view.addSubview(ImageView)
        view.addSubview(SignUp)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ImageView.frame = CGRect(x: 50, y: 200, width: 300, height: 300)
        SignUp.frame = CGRect(x: 20, y: ImageView.bottom + 30, width: view.width - 40, height: 60)

    }
    
}

