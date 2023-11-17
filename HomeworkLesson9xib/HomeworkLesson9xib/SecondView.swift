//
//  SecondView.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 17/11/2023.
//

import UIKit

class SecondView: UIView {
    let labelSecondView = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        labelSecondView.text = "Notes:"
        labelSecondView.textColor = .black
        labelSecondView.tintColor = .black
        
        labelSecondView.numberOfLines = 1
        addSubview(labelSecondView)
        labelSecondView.translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .gray
        NSLayoutConstraint.activate([
            labelSecondView.topAnchor.constraint(equalTo: topAnchor, constant: 6),
            labelSecondView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            labelSecondView.widthAnchor.constraint(equalToConstant: 100),
            labelSecondView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

