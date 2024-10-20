//
//  ViewController.swift
//  DualView
//
//  Created by Пупка on 18.10.2024.
//

import UIKit

class ViewController: UIViewController {

    var squareOne: UIView = {
        let squareOne = UIView()
        squareOne.backgroundColor = .red
        //squareOne.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        squareOne.translatesAutoresizingMaskIntoConstraints = false
        return squareOne
    }()
    
    var squareTwo: UIView = {
        let squareTwo = UIView()
        squareTwo.backgroundColor = .blue
        //squareTwo.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        squareTwo.translatesAutoresizingMaskIntoConstraints = false
        return squareTwo
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(squareOne)
        view.addSubview(squareTwo)
        
        NSLayoutConstraint.activate([
            squareOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            squareOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            squareOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            squareOne.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5, constant: -10),
            
            squareTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            squareTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            squareTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            squareTwo.topAnchor.constraint(equalTo: squareOne.bottomAnchor, constant: -10),
            squareTwo.heightAnchor.constraint(equalTo: squareOne.heightAnchor, constant: -10)
        ])
    }
}

