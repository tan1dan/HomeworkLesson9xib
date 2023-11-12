//
//  FirstView.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 12/11/2023.
//

import UIKit

class FirstView: UIView, UITextFieldDelegate {
    
    var textClosure : ((String) -> Void)?
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print(label1)
        label1?.text = "First"
        commonInit()
        print(textField1)
        textField1?.delegate = self
        textField2?.delegate = self
        textField3?.delegate = self
        
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    private func commonInit(){
        let xib = UINib(nibName: "FirstView", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! FirstView
        
        view.frame = self.bounds
        addSubview(view)
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textClosure?(textField.text ?? "")
        return true
    }
}
