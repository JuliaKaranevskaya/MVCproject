//
//  PersonCardView.swift
//  MVCproject
//
//  Created by Юлия Караневская on 31.05.21.
//

import UIKit

class PersonCardView: UIView {
    
    let personLabel: UILabel = {
        let l = UILabel()
        l.backgroundColor = .systemGreen
        l.textAlignment = .center
        l.textColor = .white
        l.font = UIFont.systemFont(ofSize: 30)
        l.numberOfLines = .zero
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(personLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configureCard(with info: String) {
        personLabel.text = info
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        personLabel.frame = CGRect(x: 10, y: 10, width: frame.size.width - 20, height: frame.size.height - 20)
    }
}
