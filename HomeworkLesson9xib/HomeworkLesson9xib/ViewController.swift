//
//  ViewController.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 12/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let customView = FirstView(frame: .zero)
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(customView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }


}

