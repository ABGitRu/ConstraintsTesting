//
//  ViewController.swift
//  ConstraintsTesting
//
//  Created by Mac on 02.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var firstSquare: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    var secondSquare: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstSquare)
        view.addSubview(secondSquare)
        view.backgroundColor = .blue
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupViews()
    }
    
    private func setupViews() {
        let constraints = [
            firstSquare.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            firstSquare.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            firstSquare.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            secondSquare.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            secondSquare.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            secondSquare.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            secondSquare.heightAnchor.constraint(equalTo: firstSquare.heightAnchor, multiplier: 1),
            secondSquare.topAnchor.constraint(equalTo: firstSquare.bottomAnchor, constant: 5)
        ]
        NSLayoutConstraint.activate(constraints)
    }


}

