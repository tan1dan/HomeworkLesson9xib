//
//  ViewController.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 12/11/2023.
//

import UIKit

class ViewController: UIViewController, ThirdViewDelegate {
    
    let customView = FirstView(frame: .zero)
    let secondView = SecondView()
    let thirdView = ThirdView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(customView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        customView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        thirdView.delegate = self
        NSLayoutConstraint.activate([
            //CustomView constraints
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            //SecondView constraints
            secondView.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 6),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            //ThirdView constraints
            thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 16),
            thirdView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            thirdView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            thirdView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        customView.textClosureBegin = {string in
            print("Start editing text: \(string)")
        }
        
        customView.textClosureEnd = {string in
            print("End editing text: \(string)")
        }
    }
    
    func buttonPres(_ sender: ThirdView) {
        print("""
             First: \(customView.textField1?.text ?? "nil")
             Middle: \(customView.textField2?.text ?? "nil")
             Last: \(customView.textField3?.text ?? "nil")
             """)
    }

}

