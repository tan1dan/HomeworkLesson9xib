//
//  ThirdView.swift
//  HomeworkLesson9xib
//
//  Created by Иван Знак on 17/11/2023.
//

import UIKit

protocol ThirdViewDelegate: AnyObject {
    func buttonPres(_ sender: ThirdView)
}

class ThirdView: UIView {
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var buttonCancel: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    weak var delegate: ThirdViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonSave.setTitle("Save", for: .normal)
        buttonCancel.setTitle("Cancel", for: .normal)
        buttonClear.setTitle("Clear", for: .normal)
        buttonSave.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func commonInit(){
        let xib = UINib(nibName: "ThirdView", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! ThirdView
        
        view.frame = self.bounds
        addSubview(view)
    }
    
    @objc func buttonTapped(_ sender: UIButton){
        delegate?.buttonPres(self)
    }
}
