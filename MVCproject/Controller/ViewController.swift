//
//  ViewController.swift
//  MVCproject
//
//  Created by Юлия Караневская on 31.05.21.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "John", lastName: "Smith", position: "iOS Developer", workExperience: "2 years")
    
    let cardView = PersonCardView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        cardView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        cardView.center = view.center
        cardView.configureCard(with: "\(person.firstName) \(person.lastName) for position \(person.position) with experience of \(person.workExperience).")
        view.addSubview(cardView)
    }


}

