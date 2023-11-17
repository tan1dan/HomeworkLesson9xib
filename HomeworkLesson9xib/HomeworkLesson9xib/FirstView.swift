//
//  FirstView.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 12/11/2023.
//

import UIKit

class FirstView: UIView, UITextFieldDelegate {
    var textClosureBegin : ((String) -> Void)?
    var textClosureEnd : ((String) -> Void)?


    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label1?.text = "First"
        label2?.text = "Middle"
        label3?.text = "Last"
        
        textField1?.delegate = self
        textField2?.delegate = self
        textField3?.delegate = self
        
        textField1.placeholder = "Enter First Name"
        textField2.placeholder = "Enter Middle Name"
        textField3.placeholder = "Enter Last Name"
        
    }
    
    private func commonInit(){
        let xib = UINib(nibName: "FirstView", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! FirstView
        
        view.frame = self.bounds
        addSubview(view)
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textClosureBegin?(textField.text ?? "error")
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textClosureEnd?(textField.text ?? "error")
        return true
    }
}
