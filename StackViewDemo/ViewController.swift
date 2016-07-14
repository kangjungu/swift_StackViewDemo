//
//  ViewController.swift
//  StackViewDemo
//
//  Created by JHJG on 2016. 7. 13..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cupStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addCup(sender: UIButton) {
        let cupImage = UIImageView(image: UIImage(named: "RedCoffeeCup"))
        cupImage.contentMode = .ScaleAspectFit
        
        UIView.animateWithDuration(0.75, animations: {
            //cup stack view 인스턴스에 하위 뷰를 추가하는 애니메이션을 위하여 애니메이션 블록이 사용된다.
            self.cupStackView.addArrangedSubview(cupImage)
            self.cupStackView.layoutIfNeeded()
        })
    }
    @IBAction func removeCup(sender: UIButton) {
        let lastAddedCup = self.cupStackView.arrangedSubviews.last
        
        if let cup = lastAddedCup{
            UIView.animateWithDuration(0.25, animations: {
                self.cupStackView.removeArrangedSubview(cup)
                cup.removeFromSuperview()
                self.cupStackView.layoutIfNeeded()
            })
        }
    }

}

